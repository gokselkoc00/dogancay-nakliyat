import{b as y,r as u,o as a,c as e,a as i,w as d,F as n,d as s,D as m,t as r,j as p,f as h,p as f,e as x}from"./app-2bb09600.js";import b from"./Layout-bf935a88.js";import{_ as k}from"./_plugin-vue_export-helper-c27b6911.js";import"./Header-9e6baa51.js";import"./Footer-55c12a0d.js";import"./Preloader-8280f9eb.js";const w={data(){return{data:{}}},components:{Layout:b},mounted(){this.getData()},methods:{async getData(){try{y.get(route("havayolu-tasimaciligi.data")).then(o=>{this.data=o.data}).catch(o=>{console.error(o)})}catch(o){console.error(o)}}}},H=o=>(f("data-v-27487503"),o=o(),x(),o),D={class:"container"},I={class:"row",style:{"margin-top":"180px"}},L={class:"col-md-4",style:{display:"flex","align-items":"center","justify-content":"center"}},S={class:""},T={key:0,class:"header-title"},B={class:"col-md-8"},C=["src"],N=H(()=>s("div",{class:"custom-carousel-caption d-none d-md-block mt-5"},null,-1)),V={class:"container"},Y={class:"row mt-5 mb-5"},j={class:"col-lg-6 mb-4",style:{display:"flex","flex-direction":"column"}},F=["src"],E={class:"col-lg-6"},q={class:"row",style:{"margin-top":"1rem"}},z={class:"custom-card"},A={class:"card-body align-self-center"},G={class:"card-title"},J={class:"card-text mb-0"};function K(o,M,O,P,c,Q){const g=u("Head"),v=u("Layout");return a(),e(n,null,[i(g,{title:"Hava Yolu Taşımacılığı"}),i(v,null,{default:d(()=>{var _;return[s("div",D,[s("div",I,[s("div",L,[s("div",S,[i(m,{name:"slide-title"},{default:d(()=>{var t,l;return[(t=c.data.data)!=null&&t.title?(a(),e("h5",T,r((l=c.data.data)==null?void 0:l.title),1)):p("",!0)]}),_:1})])]),s("div",B,[i(m,{name:"slide-img"},{default:d(()=>{var t;return[(t=c.data)!=null&&t.hero?(a(),e("img",{key:0,src:o.$page.props.site_url+c.data.hero,class:"img-fluid custom-hero-img",alt:"..."},null,8,C)):p("",!0)]}),_:1})])]),N,s("div",V,[s("div",Y,[s("div",j,[s("div",null,[(a(!0),e(n,null,h(c.data.images,(t,l)=>(a(),e("div",{class:"frame",key:l},[s("img",{class:"custom-img img-fluid",src:o.$page.props.site_url+(t==null?void 0:t.img_url)},null,8,F)]))),128))])]),s("div",E,[s("div",q,[(a(!0),e(n,null,h((_=c.data.data)==null?void 0:_.data,(t,l)=>(a(),e("div",{class:"col-md-12 mb-4",key:l},[s("div",z,[s("div",A,[s("h3",G,r(t==null?void 0:t.title),1),s("p",J,r(t==null?void 0:t.text),1)])])]))),128))])])])])])]}),_:1})],64)}const ss=k(w,[["render",K],["__scopeId","data-v-27487503"]]);export{ss as default};