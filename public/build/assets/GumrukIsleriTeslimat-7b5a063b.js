import{b as p,r as _,o as a,c as e,a as h,w as f,F as u,d as t,t as d,h as v,k as y,p as x,e as k}from"./app-3104e780.js";import w from"./Layout-33f69ea9.js";import{_ as L}from"./_plugin-vue_export-helper-c27b6911.js";import"./Header-2232d165.js";import"./Footer-be71a31e.js";import"./Preloader-ceab5f9e.js";const I={data(){return{data:{},contentList:[],hero:""}},components:{Layout:w},mounted(){this.getData()},methods:{async getData(){try{p.get(route("gumruk-isleri-tes.data")).then(s=>{this.data=s.data,this.hero=s.data.hero,this.contentList=s.data.data}).catch(s=>{console.error(s)})}catch(s){console.error(s)}}}},b=s=>(x("data-v-2dc5675f"),s=s(),k(),s),S={class:"row"},j=["src"],B={class:"container"},C={class:"row",style:{"margin-top":"80px"}},D={class:"col-md-12",style:{display:"flex","align-items":"center","justify-content":"center"}},G={class:""},N={key:0,class:"c-h2-title","data-aos":"fade-left","data-aos-duration":"3000"},T=b(()=>t("div",{class:"custom-carousel-caption d-none d-md-block mt-5"},null,-1)),V={class:"container",style:{"margin-bottom":"6rem"}},F={key:0,class:"row"},H={class:"col-lg-6 align-items-stretch order-2 order-lg-1 img aos-init aos-animate mt-5 mb-5"},E=["src"],q={class:"col-lg-6 d-flex flex-column justify-content-center align-items-stretch order-1 order-lg-2"},z={class:"content"},A={"data-aos":"fade-right","data-aos-duration":"3000"},J={key:1,class:"row"},K={class:"col-lg-6 d-flex flex-column justify-content-center align-items-stretch order-2 order-lg-1"},M={class:"content"},O={"data-aos":"fade-right","data-aos-duration":"3000"},P={class:"col-lg-6 align-items-stretch order-1 order-lg-2 img aos-init aos-animate mt-5 mb-5"},Q=["src"];function R(s,U,W,X,c,Y){const m=_("Head"),g=_("Layout");return a(),e(u,null,[h(m,{title:"Gümrük İşleri Teslimat"}),h(g,null,{default:f(()=>{var n,r,i;return[t("div",S,[t("img",{style:{"max-height":"400px",width:"100%"},src:c.hero,class:"img-fluid"},null,8,j)]),t("div",B,[t("div",C,[t("div",D,[t("div",G,[(n=c.data.data)!=null&&n.title?(a(),e("h2",N,d((r=c.data.data)==null?void 0:r.title),1)):v("",!0)])])]),T,t("div",V,[(a(!0),e(u,null,y((i=c.contentList)==null?void 0:i.data,(o,l)=>(a(),e("div",{key:l},[l%2===0?(a(),e("div",F,[t("div",H,[t("img",{class:"cst-content-img img-fluid",src:o==null?void 0:o.img_url,alt:"","data-aos":"fade-left","data-aos-duration":"3000"},null,8,E)]),t("div",q,[t("div",z,[t("p",A,d(o==null?void 0:o.text),1)])])])):(a(),e("div",J,[t("div",K,[t("div",M,[t("p",O,d(o==null?void 0:o.text),1)])]),t("div",P,[t("img",{class:"cst-content-img img-fluid",src:o==null?void 0:o.img_url,alt:"","data-aos":"fade-left","data-aos-duration":"3000"},null,8,Q)])]))]))),128))])])]}),_:1})],64)}const et=L(I,[["render",R],["__scopeId","data-v-2dc5675f"]]);export{et as default};
