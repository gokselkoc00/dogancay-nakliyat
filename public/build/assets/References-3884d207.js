import{b as x,r as d,o as n,c as i,a,w as r,F as m,d as e,E as h,t as l,j as g,f as y,g as v}from"./app-833fb572.js";import w from"./Layout-8b11a3f5.js";import{_ as k}from"./_plugin-vue_export-helper-c27b6911.js";import"./Header-d9cadb23.js";import"./Footer-60ce6d7b.js";import"./Preloader-d29d8191.js";const L={data(){return{images:{},title:{},heroImage:""}},components:{Layout:w},mounted(){this.getData()},methods:{async getData(){try{x.get(route("references-inner.data")).then(s=>{this.images=s.data.images,this.title=s.data.title,this.heroImage=s.data.heroImage}).catch(s=>{console.error(s)})}catch(s){console.error(s)}}}},I={class:"row"},b=["src"],N={class:"container"},V={class:"row",style:{"padding-top":"80px","padding-bottom":"70px","text-align":"center"}},j={class:"col-md-12",style:{display:"flex","align-items":"center","justify-content":"center"}},B={class:""},C={key:0,class:"header-title"},D={key:0,class:"mt-5"},R={class:"row w-100 mt-5",style:{"margin-left":"0px","margin-right":"0px"}},E={class:"icon-box referances-item",style:{width:"100%"}},F={class:"referances-icon"},H=["src"],T={class:"text-center",style:{"padding-top":"1.5rem"}},z={class:"row w-100 justify-content-center"},S={class:"mt-5"};function q(s,A,G,J,o,K){const p=d("Head"),u=d("Link"),f=d("Layout");return n(),i(m,null,[a(p,{title:"Referanslarımız"}),a(f,null,{default:r(()=>{var _;return[e("div",I,[e("img",{style:{"max-height":"400px",width:"100%"},src:o.heroImage,class:"img-fluid"},null,8,b)]),e("div",N,[e("div",V,[e("div",j,[e("div",B,[a(h,{name:"slide-title"},{default:r(()=>{var t,c;return[(t=o.title)!=null&&t.title?(n(),i("h1",C,l((c=o.title)==null?void 0:c.title),1)):g("",!0)]}),_:1}),a(h,{name:"slide-title"},{default:r(()=>{var t,c;return[(t=o.title)!=null&&t.text?(n(),i("p",D,l((c=o.title)==null?void 0:c.text),1)):g("",!0)]}),_:1})])]),e("div",R,[(n(!0),i(m,null,y(o.images,(t,c)=>(n(),i("div",{key:c,class:"col-xl-3 col-lg-4 col-md-6 d-flex align-items-stretch"},[e("div",E,[e("div",F,[e("div",null,[e("img",{class:"custom-logo-img img-fluid",src:t==null?void 0:t.img_url},null,8,H),e("h6",T,[a(u,{style:{color:"black"},href:s.route("references-inner.index")},{default:r(()=>[v(l(t==null?void 0:t.title),1)]),_:2},1032,["href"])])])])])]))),128))]),e("div",z,[e("p",S,l((_=o.title)==null?void 0:_.text_footer),1)])])])]}),_:1})],64)}const X=k(L,[["render",q],["__scopeId","data-v-cda070c3"]]);export{X as default};
