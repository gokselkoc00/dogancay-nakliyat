import{b as v,r,o as e,c,a as _,w as g,F as u,d as s,t as l,e as f,A as b,B as y}from"./app-c309e3dd.js";import x from"./Layout-d947a035.js";import{_ as w}from"./_plugin-vue_export-helper-c27b6911.js";import"./Header-d2ec03b5.js";import"./Footer-45b602b2.js";import"./Preloader-f5c76931.js";const k={data(){return{data:{}}},components:{Layout:x},mounted(){this.getData()},methods:{async getData(){try{v.get(route("havayolu-tasimaciligi.data")).then(t=>{this.data=t.data}).catch(t=>{console.error(t)})}catch(t){console.error(t)}}}},m=t=>(b("data-v-25e7b133"),t=t(),y(),t),H={id:"carouselExampleCaptions",class:"carousel slide"},B=m(()=>s("div",{class:"carousel-indicators"},null,-1)),I={class:"carousel-inner"},L={class:"carousel-item active"},S=["src"],C={class:"custom-carousel-caption d-none d-md-block"},D=m(()=>s("h5",null,null,-1)),T={class:"row"},Y={class:"offset-xl-3 col-xl-6 offset-lg-2 col-lg-8 col-md-12 col-sm-12"},E={class:"container"},F={class:"row mt-5 mb-5"},N={class:"col-lg-4 mb-4"},V={class:"frame"},$=["src"],A={class:"col-lg-8"},j={class:"row"},q={class:"custom-card"},z={class:"card-body align-self-center"},G={class:"card-title"},J={class:"card-text mb-0"};function K(t,M,O,P,o,Q){const h=r("Head"),p=r("Layout");return e(),c(u,null,[_(h,{title:"Hava Yolu Taşımacılığı"}),_(p,null,{default:g(()=>{var i,d,n;return[s("div",null,[s("div",H,[B,s("div",I,[s("div",L,[s("img",{src:t.$page.props.site_url+((i=o.data)==null?void 0:i.hero),class:"d-block w-100",alt:"...",height:"713"},null,8,S),s("div",C,[D,s("div",T,[s("div",Y,[s("h1",null,l((d=o.data)==null?void 0:d.title),1)])])])])])]),s("div",E,[s("div",F,[s("div",N,[s("div",null,[s("div",V,[s("img",{class:"custom-img img-fluid",src:t.$page.props.site_url+((n=o.data)==null?void 0:n.img_url)},null,8,$)])])]),s("div",A,[s("div",j,[(e(!0),c(u,null,f(o.data.data,a=>(e(),c("div",{class:"col-md-6 mb-4",key:a.id},[s("div",q,[s("div",z,[s("h3",G,l(a.title),1),s("p",J,l(a.text),1)])])]))),128))])])])])])]}),_:1})],64)}const ts=w(k,[["render",K],["__scopeId","data-v-25e7b133"]]);export{ts as default};