using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class Users
    {
        public long Id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string RememberToken { get; set; }
    }
}
