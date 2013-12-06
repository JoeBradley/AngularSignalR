using Microsoft.AspNet.SignalR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace AngularSignalR.ServiceHub
{
    public class StoreHub : Hub
    {
        public void Send(string name, string message)
        {
            ChatMessages.Messages.Add(new ChatMessage() { Name = name, Message = message });

            // Call the broadcastMessage method to update clients.
            Clients.All.broadcastMessage(name, message);
        }
        public void Join(string name)
        {
            ChatMembers.Members.Add(new ChatMember() { ConnectionId = Context.ConnectionId, Name = name });

            foreach (ChatMessage msg in ChatMessages.Messages)
            {
                Clients.Caller.broadcastMessage(msg.Name, msg.Message);
            }

            String message = "has joined the conversation";
            ChatMessages.Messages.Add(new ChatMessage() { Name = name, Message = message });

            // Call the broadcastMessage method to update clients.
            Clients.All.broadcastMessage(name, message);
        }

        public override Task OnDisconnected()
        {
            foreach (ChatMember m in ChatMembers.Members)
            {
                if (Context.ConnectionId == m.ConnectionId)
                {
                    String message = "has left the conversation";
                    ChatMessages.Messages.Add(new ChatMessage() { Name = m.Name, Message = message });
                    Send(m.Name, message);
                }
            }
            return base.OnDisconnected();
        }
    }
}