import{b as h,r as o,o as a,c as l,d as e,t as d,a as p,w as i,F as g,f as w,q as v,g as S,p as k,e as b}from"./app-ed19c81d.js";import y from"./Layout-f609de00.js";import{S as x,f as B,A as V}from"./swiper-8fecea18.js";import{_ as I}from"./_plugin-vue_export-helper-c27b6911.js";import"./Header-b18adce8.js";import"./Footer-2fd26593.js";import"./Preloader-35405a14.js";const L={components:{Layout:y,Swiper:x,SwiperSlide:B},data(){return{images:{},title:{}}},mounted(){this.getData()},methods:{async getData(){h.get(route("references.data")).then(s=>{this.images=s.data.images,this.title=s.data.title}).catch(s=>{console.error(s)})}},setup(){return{modules:[V],swiperOptions:{breakpoints:{300:{slidesPerView:"auto",spaceBetween:10},768:{slidesPerView:"auto",spaceBetween:10},992:{slidesPerView:"auto",spaceBetween:40}}}}}},P=s=>(k("data-v-a47028f0"),s=s(),b(),s),D={class:"section padding-top-70",style:{"padding-bottom":"1rem"}},N={class:"container d-block overflow-hidden"},O=P(()=>e("div",{class:"hr"},null,-1)),A={class:"col-lg-12"},C={class:"mt-5"},F={class:"section-title text-center"},R={class:"row mt-5"},q={class:"icon-box referances-slider-item"},E={class:"referances-icon"},T=["src"],j={class:"text-center",style:{"padding-top":"1rem"}};function z(s,G,H,c,n,J){var r;const _=o("Link"),u=o("SwiperSlide"),m=o("Swiper");return a(),l("section",D,[e("div",N,[O,e("div",A,[e("div",C,[e("h2",F,d((r=n.title)==null?void 0:r.title),1)]),e("div",R,[p(m,{class:"pt-3",autoplay:{delay:1500,disableOnInteraction:!1},scrollbar:!1,slidesPerView:"auto",spaceBetween:20,loop:!0,pagination:{clickable:!0},modules:c.modules,breakpoints:c.swiperOptions.breakpoints},{default:i(()=>[(a(!0),l(g,null,w(n.images,(t,f)=>(a(),v(u,{key:f,class:"col-lg-3 col-md-6 d-flex align-items-stretch"},{default:i(()=>[e("div",q,[e("div",E,[e("div",null,[e("img",{class:"custom-logo-img img-fluid",src:t==null?void 0:t.img_url},null,8,T),e("h6",j,[p(_,{style:{color:"black"},href:s.route("references-inner.index")},{default:i(()=>[S(d(t==null?void 0:t.title),1)]),_:2},1032,["href"])])])])])]),_:2},1024))),128))]),_:1},8,["modules","breakpoints"])])])])])}const Z=I(L,[["render",z],["__scopeId","data-v-a47028f0"]]);export{Z as default};
