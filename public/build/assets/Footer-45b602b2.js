import{b as u,o as t,c as o,d as e,F as d,e as _,t as h,D as p,f as m,z as k}from"./app-c309e3dd.js";import{_ as y}from"./_plugin-vue_export-helper-c27b6911.js";const w={data(){return{footer:{},languages:[]}},computed:{currentLanguage(){const s=this.$page.props.lang;if(this.languages!=null||this.languages!=[])return this.languages.find(n=>n.key===s)}},mounted(){this.getData()},methods:{async getData(){try{u.get(route("footer.data")).then(s=>{this.footer=s.data.footer,this.languages=s.data.languages}).catch(s=>{console.error(s)})}catch(s){console.error(s)}}},setup(){return{changeLanguage:n=>{u.post("/set-language",{language:n}).then(()=>{window.location.reload()})}}}},b={class:"container"},x={class:"row"},L={class:"d-flex align-items-center justify-content-between col-lg-12 col-md-12 col-sm-12"},v={class:"social"},D=["href"],B={class:"btn-group dropup"},C={type:"button",class:"btn dropdown-toggle d-flex align-items-center","data-bs-toggle":"dropdown","aria-expanded":"false"},F=["src"],z={cl:"",style:{color:"#1e1e1e","margin-left":"0.25rem"}},N={class:"dropdown-menu"},V=["onClick"],$=["src"];function j(s,n,E,f,l,c){var g,i;return t(),o("footer",null,[e("div",b,[e("div",x,[e("div",L,[e("ul",v,[(t(!0),o(d,null,_(l.footer,(a,r)=>(t(),o("li",{key:r},[e("a",{target:"_blank",href:a.link},[e("i",{class:p(a==null?void 0:a.class)},null,2)],8,D)]))),128))]),e("div",B,[e("a",C,[e("img",{class:"",src:s.$page.props.site_url+((g=c.currentLanguage)==null?void 0:g.img_url)},null,8,F),e("p",z,h((i=c.currentLanguage)==null?void 0:i.name),1)]),e("ul",N,[(t(!0),o(d,null,_(l.languages,(a,r)=>(t(),o("li",{key:r},[e("a",{class:"dropdown-item",onClick:m(M=>f.changeLanguage(a.key),["prevent"])},[e("img",{class:"img-fluid flag-img",src:a.img_url},null,8,$),k(" "+h(a==null?void 0:a.name),1)],8,V)]))),128))])])])])])])}const q=y(w,[["render",j]]);export{q as default};