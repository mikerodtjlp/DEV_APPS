<script runat="server" language="C#">
    // the link component
    public mro.link lnk = null;
    // working data for the webservices
    //public CParameters maindb = null;   // for the BL and DAL operation
    public CParameters values = null;   // input
    public CParameters basics = null;   // input
    public CParameters result = null;   // output
    public CParameters newval = null;   // output
    // functions used for the clients in code
    protected void set_log(string action, string key, string type) { lnk.set_log(action, key, type); }
</script>
<% (lnk = new mro.link(this, Request, Response)).go(ref basics, ref values, ref result, ref newval/*, ref maindb*/); %>