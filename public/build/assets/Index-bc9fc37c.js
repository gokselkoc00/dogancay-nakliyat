import{b as p,r as n,o as d,c as i,a as r,w as m,F as h,d as a,t as u,h as f,p as v,e as y}from"./app-3afb746c.js";import x from"./Layout-c5a998da.js";import{_ as g}from"./_plugin-vue_export-helper-c27b6911.js";import"./Header-f09aa1d6.js";import"./Footer-711f15c5.js";import"./Preloader-238826b8.js";const k={data(){return{data:{}}},components:{Layout:x},mounted(){this.getData()},methods:{async getData(){try{p.get(route("cerez-politikalari.data")).then(t=>{this.data=t.data}).catch(t=>{console.error(t)})}catch(t){console.error(t)}}}},w=t=>(v("data-v-0a2ea0a0"),t=t(),y(),t),I={class:"row"},L=["src"],H={class:"container"},S={class:"row mt-5"},b={class:"col-md-12",style:{display:"flex","align-items":"center","justify-content":"center"}},B={class:""},C={key:0,class:"c-h2-title","data-aos":"fade-right","data-aos-duration":"3000"},D=w(()=>a("div",{class:"custom-carousel-caption d-none d-md-block mt-5"},null,-1)),N={class:"container"},V={class:"mt-5 mb-5"},z=["innerHTML"];function F(t,M,T,j,e,E){const l=n("Head"),_=n("Layout");return d(),i(h,null,[r(l,{title:"Çerez Politikası"}),r(_,null,{default:m(()=>{var o,s,c;return[a("div",I,[a("img",{style:{"max-height":"400px",width:"100%"},src:e.data.hero,class:"img-fluid"},null,8,L)]),a("div",H,[a("div",S,[a("div",b,[a("div",B,[(o=e.data.data)!=null&&o.title?(d(),i("h2",C,u((s=e.data.data)==null?void 0:s.title),1)):f("",!0)])])]),D,a("div",N,[a("div",V,[a("p",{"data-aos":"fade-left","data-aos-duration":"3000",innerHTML:(c=e.data.data)==null?void 0:c.text},null,8,z)])])])]}),_:1})],64)}const O=g(k,[["render",F],["__scopeId","data-v-0a2ea0a0"]]);export{O as default};
