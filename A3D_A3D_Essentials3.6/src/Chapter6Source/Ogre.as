//AS3ExporterAIR version 2.3, code Flash 10, generated by Prefab3D: http://www.closier.nl/prefab
package Chapter6Source
{
	import away3d.containers.ObjectContainer3D;
	import away3d.containers.Scene3D;
	import away3d.materials.*;
	import away3d.core.base.*;
	import away3d.core.utils.Init;
	import away3d.loaders.utils.*;
	import away3d.loaders.data.*;
	import flash.utils.Dictionary;
	import away3d.primitives.*;

	import flash.geom.*;

	public class Ogre extends Mesh
	{
		private var objs:Object = {};
		private var geos:Array = [];
		private var oList:Array =[];
		private var aC:Array;
		private var aV:Array;
		private var aU:Array;
		private var _scale:Number;

		public function Ogre(init:Object = null)
		{
			var ini:Init = Init.parse(init);
			_scale = ini.getNumber("scaling", 1);
			setSource();
			addContainers();
			buildMeshes();
			buildMaterials();
			cleanUp();
		}

		private function buildMeshes():void
		{
			var m0:Matrix3D = new Matrix3D();
			m0.rawData = Vector.<Number>([1,0,0,0,0,1,0,0,0,0,1,0,-396.7203799635172*_scale,189.568779617548*_scale,124.56639036536217*_scale,1]);
			transform = m0;

			objs.obj0 = {name:"aw_0",  transform:m0, pivotPoint:new Vector3D(0,0,0), container:-1, bothsides:false, material:null, ownCanvas:false, pushfront:false, pushback:false};
			objs.obj0.geo=geos[0];

			var ref:Object;
			
			var j:int;
			var av:Array;
			var au:Array;
			var v0:Vertex;
			var v1:Vertex;
			var v2:Vertex;
			var u0:UV;
			var u1:UV;
			var u2:UV;
			var aRef:Array ;
			for(var i:int = 0;i<1;++i){
				ref = objs["obj"+i];
				if(ref != null){
					this.type = ".as";
					this.bothsides = ref.bothsides;
					this.name = ref.name;
					this.pushfront = ref.pushfront;
					this.pushback = ref.pushback;
					this.ownCanvas = ref.ownCanvas;

					oList.push(this);
					this.transform = ref.transform;
					this.movePivot(ref.pivotPoint.x, ref.pivotPoint.y, ref.pivotPoint.z);
					if (ref.geo.geometry != null) {
						this.geometry = ref.geo.geometry;
						continue;
					}
					ref.geo.geometry = new Geometry();
					this.geometry = ref.geo.geometry;
					aRef = ref.geo.f.split(",");
					for(j = 0;j<aRef.length;j+=6){
						try{
							av = ref.geo.aV[parseInt(aRef[j], 16)].split("/");
							v0 = new Vertex(Number(parseFloat(av[0]))*_scale, Number(parseFloat(av[1]))*_scale, Number(parseFloat(av[2]))*_scale);
							av = ref.geo.aV[parseInt(aRef[j+1],16)].split("/");
							v1 = new Vertex(Number(parseFloat(av[0]))*_scale, Number(parseFloat(av[1]))*_scale, Number(parseFloat(av[2]))*_scale);
							av = ref.geo.aV[parseInt(aRef[j+2],16)].split("/");
							v2 = new Vertex(Number(parseFloat(av[0]))*_scale, Number(parseFloat(av[1]))*_scale, Number(parseFloat(av[2]))*_scale);
							au = ref.geo.aU[parseInt(aRef[j+3],16)].split("/");
							u0 = new UV(parseFloat(au[0]), parseFloat(au[1]));
							au = ref.geo.aU[parseInt(aRef[j+4],16)].split("/");
							u1 = new UV(parseFloat(au[0]), parseFloat(au[1]));
							au = ref.geo.aU[parseInt(aRef[j+5],16)].split("/");
							u2 = new UV(parseFloat(au[0]), parseFloat(au[1]));
							ref.geo.geometry.addFace( new Face(v0, v1, v2, ref.material, u0, u1, u2) );
						}catch(e:Error){
							trace("obj"+i+": ["+aV[parseInt(aRef[j],16)].split("/")+"],["+aV[parseInt(aRef[j+1],16)].split("/")+"],["+aV[parseInt(aRef[j+2],16)].split("/")+"]");
							trace("     uvs: ["+aV[parseInt(aRef[j+3],16)].split("/")+"],["+aV[parseInt(aRef[j+4],16)].split("/")+"],["+aU[parseInt(aRef[j+5],16)].split("/")+"]");
						}
					}
				}
			}
		}

		private function setSource():void
		{
			var geo0:Object = {};
			geo0.aVstr="78.12c4/-649.2021/159.15d9,63.1499/-60c.bbe/456.7dc,-154.1310/-5f7.1efd/1fb.c21,-ac.21b7/-821.1326/227.1095,-15e.25ad/-5ce.1e6b/379.18ab,24f.2424/-591.a08/1ec.17aa,245.1187/-568.976/3e0.1608,-b7.d45/-7f8.1294/3a5.1d1e,f6.7c6/-8c5.156d/49f.1c4d,-78.12c4/-84a.13b8/312.1b4d,c1.1fe2/-8b1.019c/218.1c1e,f6.7c6/-8c5.156d/159.15d9,169.113b/-a22.6bd/4cb.20c1,-82.2561/-92c.0352/4f7.2534,245.1187/-8c5.156d/438.1eef,2a3.1cd0/-a36.1a8e/3b4.1195,321.11d3/-84a.13b8/303.26d6,173.23d8/-a36.1a8e/1dd.2334,-2f.5a5/-940.1723/185.1a4d,245.1187/-8da.022e/1cf.7ad,2a3.1cd0/-a36.1a8e/1fb.c21,2a3.1cd0/-a36.1a8e/3c3.60b,-6e.0026/-a22.6bd/4f7.2534,-24.1a17/-a36.1a8e/185.1a4d,-193.d91/-a22.6bd/3e0.1608,-193.d91/-a22.6bd/1fb.c21,-19d.202e/-8c5.156d/3ef.a7f,-19d.202e/-8c5.156d/1fb.c21,-245.1187/18f.22da/-658.21c1,-115.188e/5c.b0c/-726.1c7c,-2f.5a5/18f.22da/-752.20ef,-14a.072/-33.a7a/-5d4.1466,63.1499/-49b.69d/5f1.2463,-a2.f1a/-315.14bc/5f1.2463,-1a.77a/-390.1671/684.2634,-78.12c4/-2c3.1398/5a8.ff2,1a.77a/-2ae.26d7/726.1c7c,e1.99b/-367.15df/58a.2705,59.01fb/-40b.1827/658.21c1,d6.1e0d/-45d.194a/524.0298,39.1842/-49b.69d/550.70b,eb.1c38/-3b9.1703/709.c7f,120.41c/-4af.1a6e/6b1.0398,173.23d8/-33e.154d/61e.01c7,154.1310/-33e.154d/752.20ef,4e.166d/-301.0eb/506.19ab,-4e.166d/-3f7.456/5a8.ff2,-1a.77a/-29a.1306/491.0c6,1a.77a/-21f.1150/4e9.9ae,-44.03d0/-301.0eb/4da.1537,39.1842/-301.0eb/491.0c6,ac.21b7/-13d.21b6/56d.1708,1d2.812/-2ec.142a/6a2.f21,1fc.468/-21f.1150/56d.1708,17e.f66/-17b.f09/676.aae,6e.0026/-390.1671/532.1e1e,1bd.9e7/-49b.69d/5b7.469,10b.5f1/-4c4.72f/600.18d9,120.41c/-3b9.1703/5c5.1fef,21b.1531/-40b.1827/676.aae,193.d91/-449.579/6ce.1395,1f1.18db/-40b.1827/6fa.1808,193.d91/-353.020e/667.1637,120.41c/5a5.1dd9/482.c50,1d2.812/486.19dc/456.7dc,1b2.1e59/353.020e/330.43a,355.20c6/649.2021/49f.1c4d,f6.7c6/69b.2144/35c.8ad,135.0247/620.1f8f/262.97f,2b8.1afc/568.976/1cf.7ad,264.224f/40b.1827/29d.0269,230.135c/716.22fa/303.26d6,360.c54/486.19dc/270.2505,41c.22e7/5ce.1e6b/2e6.16d9,360.c54/45d.194a/3d1.2192,21b.1531/-c2.2001/64a.63a,23a.25f9/-152.e77/515.e21,cc.b70/-eb.2093/64a.63a,115.188e/-47.1e4b/541.1295,1d2.812/-1a4.f9b/58a.2705,34b.e29/-eb.2093/4bd.53a,26f.ddd/-114.2124/3fd.2605,1e7.63d/c2.2001/41b.ef2,188.2203/114.2124/5f1.2463,3e8.13f4/ae.c30/5c5.1fef,284.c08/1b8.236c/541.1295,41c.22e7/1cd.102d/506.19ab,2b8.1afc/166.2248/3b4.1195,245.1187/1cd.102d/438.1eef,446.1f3e/85.b9e/3c3.60b,2e2.1752/25c.25b3/312.1b4d,47b.721/21f.1150/34d.1437,355.20c6/3b9.1703/303.26d6,39f.6d5/367.15df/532.1e1e,1f1.18db/367.15df/524.0298,1b2.1e59/353.020e/3fd.2605,2f7.157d/45d.194a/491.0c6,-2cd.1927/40b.1827/-541.1295,-21b.1531/4c4.72f/-58a.2705,-226.0be/434.18b9/-482.c50,-2e2.1752/472.60b/-4da.1537,-38a.8aa/3b9.1703/-532.1e1e,-375.a7f/315.14bc/-541.1295,-470.1b94/33e.154d/-667.1637,-451.acb/248.11e2/-4e9.9ae,-336.ffe/49b.69d/-6a2.f21,-173.23d8/315.14bc/-667.1637,-299.a33/1b8.236c/-62c.1d4d,-394.1b48/301.0eb/-491.0c6,-470.1b94/37c.02a0/-4da.1537,-24.1a17/152.e77/-5d4.1466,-d6.1e0d/29a.1306/-4bd.53a,8d.10ef/1f6.10bf/-658.21c1,-39.1842/-85.b9e/-550.70b,-17e.f66/ae.c30/-58a.2705,-279.207a/17b.f09/-524.0298,-1b2.1e59/ae.c30/-464.2363,-2d8.4b4/271.1274/-447.1366,-135.0247/367.15df/-541.1295,-e1.99b/37c.02a0/-473.17d9,-10b.5f1/301.0eb/-56d.1708,-19d.202e/233.2521/-599.1b7c,-135.0247/29a.1306/-693.1aab,-f6.7c6/1f6.10bf/-3a5.1d1e,24.1a17/99.1f6f/-40c.1a7c,-321.11d3/3b9.1703/-3ef.a7f,-4af.1615/3b9.1703/-28e.df2,-537.1db5/420.4e8/-3d1.2192,-4f8.2334/52a.1c24/-41b.ef2,-490.54c/591.a08/-3b4.1195,-407.24bc/4c4.72f/-2e6.16d9,1a8.bbc/553.1cb5/-321.fc3,d6.1e0d/1e1.23fe/-3b4.1195,d6.1e0d/5e3.b2c/-270.2505,120.41c/21f.1150/-4bd.53a,e1.99b/57c.1d47/-456.7dc,a2.f1a/3f7.456/-4cb.20c1,24.1a17/568.976/-515.e21,-37f.1d1d/3b9.1703/-2f5.b50,-321.11d3/4ed.7c1/-3d1.2192,-407.24bc/4c4.72f/-550.70b,-47b.721/353.020e/-3d1.2192,-24.1a17/18f.22da/-3fd.2605,-cc.b70/20a.2490/-4ae.10c3,13f.14e5/d7.cc2/-506.19ab,97.238c/21f.1150/-55e.2292,-6e.0026/2ec.142a/-599.1b7c,-13f.14e5/33e.154d/-447.1366,-8d.10ef/486.19dc/-3b4.1195,-97.238c/32a.017d/-36a.2434,-78.12c4/5ba.a9a/-388.d21,2f.5a5/353.020e/-321.fc3,-78.12c4/40b.1827/-4cb.20c1,1b2.1e59/-100.d54/-35c.8ad,-d6.1e0d/-3ce.03c4/-33e.1fc0,-a2.f1a/-52a.1c24/-3b4.1195,-5.94f/-129.de5/-1a3.033a,-f6.7c6/-40b.1827/-244.2092,154.1310/-1cd.102d/16.023a,193.d91/-2c3.1398/-3c3.60b,2c3.689/-367.15df/-29d.0269,3b4.500/-114.2124/-218.1c1e,1d2.812/-4ed.7c1/-2ba.1266,1a8.bbc/-501.1b92/-1fb.c21,3b4.500/-20a.2490/-b7.1f92,97.238c/-6ed.2268/-303.26d6,1f1.18db/-702.f29/-40c.1a7c,13f.14e5/-5a5.1dd9/-464.2363,-ac.21b7/-5a5.1dd9/-29d.0269,34b.e29/-52a.1c24/-312.1b4d,3be.179e/-687.d73/-218.1c1e,28e.1ea5/-568.976/-1c0.1337,3e8.13f4/-65e.ce1/-379.18ab,63.1499/-516.853/-1ec.17aa,a2.f1a/-4ed.7c1/-3fd.2605,19d.202e/-60c.bbe/-159.15d9,19d.202e/-716.22fa/-1b1.1ec0,1b2.1e59/-6b0.e05/-168.a50,-5.94f/-6c4.21d6/-253.1508,206.1706/-649.2021/-456.7dc,135.0247/-8b1.019c/-270.2505,24.1a17/-69b.2144/-3d1.2192,375.a7f/-57c.1d47/-1b1.1ec0,3a9.1973/-53f.8e5/-3a5.1d1e,15e.25ad/-873.144a/-3e0.1608,1b2.1e59/-888.010a/-35c.8ad,360.c54/-8c5.156d/-49f.1c4d,2d8.4b4/-8da.022e/-159.15d9,2c3.689/-8da.022e/-227.1095,3f2.2691/-a22.6bd/-4bd.53a,211.0293/-940.1723/-532.1e1e,49a.17ea/-8b1.019c/-3fd.2605,4ee.1096/-a22.6bd/-36a.2434,537.1db5/-80c.2665/-29d.0269,375.a7f/-a22.6bd/-1dd.2334,1c7.1c84/-955.03e4/-1cf.7ad,431.2113/-8b1.019c/-1a3.033a,49a.17ea/-a22.6bd/-1b1.1ec0,4f8.2334/-a22.6bd/-379.18ab,226.0be/-a22.6bd/-532.1e1e,1d2.812/-a36.1a8e/-1c0.1337,d6.1e0d/-a22.6bd/-464.2363,6e.0026/-a22.6bd/-27f.197c,cc.b70/-8c5.156d/-464.2363,6e.0026/-8c5.156d/-28e.df2,19d.202e/-d7.cc2/34d.1437,-1b2.1e59/-434.18b9/35c.8ad,-17e.f66/-2ec.142a/2f5.b50,5.94f/-114.2124/1c0.1337,-188.2203/-315.14bc/1fb.c21,10b.5f1/-271.1274/3c3.60b,3be.179e/-129.de5/244.2092,23a.25f9/-353.020e/2c9.6dc,d6.1e0d/-49b.69d/2ba.1266,cc.b70/-4af.1a6e/1fb.c21,3be.179e/-1e1.23fe/c6.1408,490.54c/-114.2124/-7.dc3,-39.1842/-d7.cc2/236.50b,-d6.1e0d/-17b.f09/24.1dc0,-154.1310/-114.2124/24.1dc0,211.0293/eb.2093/36a.2434,-59.01fb/1e.1db9/2d7.2263,-4e.166d/-eb.2093/-218.1c1e,1e7.63d/eb.2093/-34d.1437,-6e.0026/a.9e8/-2ab.1def,44.03d0/84a.13b8/28e.df2,17e.f66/8b1.019c/218.1c1e,21b.1531/835.26f7/35c.8ad,e1.99b/7cf.1202/3d1.2192,-10b.5f1/a36.1a8e/7.dc3,-97.238c/9d0.599/e3.2405,-1f1.18db/992.1846/159.15d9,-264.224f/9e4.196a/8b.1b1e,5.94f/1cd.102d/-2e6.16d9,1e7.63d/25c.25b3/-312.1b4d,2f.5a5/1f6.10bf/303.26d6,21b.1531/285.2645/312.1b4d,82.2561/6c4.21d6/-4ae.10c3,26f.ddd/501.1b92/-28e.df2,1a8.bbc/5ce.1e6b/-515.e21,-100.1a63/649.2021/-4ae.10c3,-12a.16ba/5ba.a9a/-218.1c1e,-120.41c/687.d73/-12d.1166,2e2.1752/5e3.b2c/-1c0.1337,c1.1fe2/5ce.1e6b/-58a.2705,14a.072/486.19dc/-473.17d9,17e.f66/835.26f7/-176.25d6,-d6.1e0d/85f.079/-27f.197c,2cd.1927/7ba.2541/-34d.1437,206.1706/917.1691/-330.43a,4e.166d/97e.476/-2e6.16d9,24.1a17/4ed.7c1/-5b7.469,-115.188e/516.853/-3fd.2605,cc.b70/6c4.21d6/-5c5.1fef,-24.1a17/6ed.2268/-58a.2705,135.0247/80c.2665/-524.0298,-135.0247/72b.fbb/-3fd.2605,-1a.77a/84a.13b8/-4e9.9ae,-e1.99b/60c.bbe/-3fd.2605,-6e.0026/60c.bbe/-515.e21,3be.179e/29a.1306/1c0.1337,3a9.1973/285.2645/-1dd.2334,-28e.1ea5/716.22fa/-5f.16aa,-2f7.157d/6ed.2268/-24.1dc0,-336.ffe/77d.10de/-5f.16aa,-2f7.157d/6d9.e97/-8b.1b1e,-10b.5f1/821.1326/-e3.2405,-13f.14e5/69b.2144/-11e.1cef,-59.01fb/6b0.e05/159.15d9,-59.01fb/835.26f7/e3.2405,-316.2645/6ed.2268/-9a.f94,-2c3.689/7cf.1202/-50.2234,-120.41c/6ed.2268/-e3.2405,-211.0293/716.22fa/227.1095,-2ed.02df/702.f29/185.1a4d,-355.20c6/6ed.2268/6e.b21,-206.1706/7e3.25d3/194.ec3,-63.1499/716.22fa/110.0169,-28e.1ea5/873.144a/-7c.26a7,-302.010a/7f8.1294/-7c.26a7,-302.010a/768.241e/-42.6ad,-1a8.bbc/672.20b2/6e.b21,-2c3.689/7e3.25d3/c6.1408,-30c.13a8/7ba.2541/e3.2405,-2ed.02df/73f.238c/e3.2405,-1c7.1c84/888.010a/185.1a4d,-21b.1531/821.1326/1ec.17aa,-23a.25f9/77d.10de/1cf.7ad,-1b2.1e59/5a5.1dd9/7c.26a7,-154.1310/687.d73/1ec.17aa,-264.224f/65e.ce1/-e3.2405,-2d8.4b4/5ba.a9a/24.1dc0,-302.010a/620.1f8f/f2.187c,-32b.2470/821.1326/f2.187c,-302.010a/8da.022e/-7.dc3,-1b2.1e59/8da.022e/-f2.187c,-ac.21b7/92c.0352/-110.0169,2f.5a5/89c.14db/-5f.16aa,-14a.072/9bb.18d8/-e3.2405,-28e.1ea5/97e.476/-50.2234,-1a.77a/992.1846/-50.2234,-321.11d3/903.02c0/e3.2405,-26f.ddd/8ee.15ff/176.25d6,-d6.1e0d/8ee.15ff/14a.2163,-5.94f/940.1723/a9.40b,-24f.2424/5ce.1e6b/185.1a4d,-eb.1c38/73f.238c/244.2092,-d6.1e0d/6b0.e05/110.0169,115.188e/77d.10de/194.ec3,-115.188e/635.c50/7.dc3,-eb.1c38/69b.2144/-101.cf2,-1c7.1c84/53f.8e5/1c0.1337,2f7.157d/768.241e/-24.1dc0,1dc.1aaf/7a6.1170/-24.1dc0,24f.2424/73f.238c/-1fb.c21,a2.f1a/754.104d/-1c0.1337,-97.238c/620.1f8f/-1fb.c21,-15e.25ad/6b0.e05/-b7.1f92,-ac.21b7/6c4.21d6/11e.1cef,13f.14e5/60c.bbe/-2ab.1def,1dc.1aaf/57c.1d47/312.1b4d,-a2.f1a/449.579/2ba.1266,8d.10ef/5ba.a9a/464.2363,230.135c/6d9.e97/438.1eef,3b4.500/687.d73/379.18ab,360.c54/501.1b92/1cf.7ad,115.188e/40b.1827/27f.197c,43c.ca0/6c4.21d6/262.97f,316.2645/4ed.7c1/-227.1095,5.94f/6c4.21d6/40c.1a7c,2ae.85e/791.24af/33e.1fc0,36a.1ef2/7f8.1294/2d7.2263,39f.6d5/7cf.1202/-16.023a,2a3.1cd0/888.010a/14a.2163,3a9.1973/553.1cb5/-24.1dc0,-6e.0026/420.4e8/-29d.0269,-59.01fb/390.1671/236.50b,-8d.10ef/37c.02a0/-218.1c1e,cc.b70/3e2.1795/-27f.197c,-1b2.1e59/3e2.1795/50.2234,-1dc.1aaf/85.b9e/16.023a,-19d.202e/21f.1150/11e.1cef,-115.188e/3a5.0332/16.023a,41c.22e7/21f.1150/-16.023a,4a5.0377/5c.b0c/-7.dc3,-1a8.bbc/20a.2490/-f2.187c,-e1.99b/-649.2021/2c9.6dc,-24.1a17/-53f.8e5/447.1366,39.1842/-6b0.e05/3fd.2605,-1b2.1e59/-4af.1a6e/244.2092,211.0293/-53f.8e5/33e.1fc0,193.d91/-553.1cb5/1dd.2334,23a.25f9/-69b.2144/253.1508,230.135c/-672.20b2/3b4.1195,-6e.0026/-472.60b/1c0.1337,-6e.0026/-45d.194a/3d1.2192,8d.10ef/-5a5.1dd9/159.15d9,39.1842/-6b0.e05/1a3.033a";
			geo0.aUstr="0.5efeb1f/0.92a09f,0.50d6bb9/0.92a09f,0.92a09f/0.e1113,0.92a09f/0.519577b,0.53d1ac1/0.e1113,0.5efeb1f/1,0.50d6bb9/1,0.53d1ac1/0.519577b,0.50d6bb9/0.7ac91b,0.16201/0.7ac91b,0.92a09f/0.7ac91b,0.5efeb1f/0.7ac91b,0.560de07/0.48b7b9,0.845283/0.30cd223,0.845283/0.8583b,0.560de07/0.324a9a7,0.8ddbeb/0.48b7b9,0.8ddbeb/0.324a9a7,0.5efeb1f/0.b34a7,0.5cc27d9/0.b34a7,0.92a09f/0.324a9a7,0.5efeb1f/0.48b7b9,0.92a09f/0.48b7b9,0.5efeb1f/0.324a9a7,0.5efeb1f/0.6ea05,0.845283/0.48b7b9,0.845283/0.6ea05,0.554f245/0.41314cf,0.92a09f/0.41314cf,0.845283/0.41314cf,0.5efeb1f/0.41314cf,0.845283/0.27dc50b,0.5efeb1f/0.27dc50b,0.845283/0.5f5e1,0.5efeb1f/0.5f5e1,0.50d6bb9/0.b34a7,0.86b4dd/0.b34a7,0.59c78d1/0.b34a7,0.5efeb1f/0.1adb,0.50d6bb9/0.1adb,0.86b4dd/0.1adb,0.59c78d1/0.1adb,0.ca2dd/0.36c3033,0.525433d/0.36c3033,0.525433d/0.4d7c6d,0.525433d/0.608f3d,0.059682f/0.44eaf99,0.05f5e1/0.aba95,0.05f5e1/0.44eaf99,0.039387/0.6a18a5,0.01dcd65/0.45a9b5b,0.0aba95/0.41f0091,0.035a4e9/0.42aec53,0.0aba95/0.42aec53,0.035a4e9/0.41f0091,0.08583b/0.41314cf,0.035a4e9/0.67b64b,0.04190ab/0.713fb3,0.059682f/0.466871d,0.0aba95/0.7f8dcf,0.035a4e9/0.ca2dd,0.035a4e9/0.7f8dcf,0.035a4e9/0.4b,0/0.7f8dcf,0.011e1a3/0.7f8dcf,0/0.4d1d0ef,0.0c35/0.a4083,0.0aba95/0.6553f1,0.0c35/0.6553f1,0.039387/0.407290d,0/0.407290d,0.0c35/0.4d1d0ef,0.011e1a3/0.4d1d0ef,0.039387/0.7d2b75,0.0c35/0.7f8dcf,0.05f5e1/0.7ac91b,0/0.4b9f96b,0/0.7ac91b,0/0.aba95,0.0c35/0.41314cf,0.04190ab/0.4a221e7,0.05f5e1/0.baeb9,0.03d09/0.4a221e7,0.04190ab/0.4b9f96b,0/0.73a20d,0.0aba95/0.a4083,0.0aba95/0.442c3d7,0.059682f/0.aba95,0.0aba95/0.7ac91b,0.059682f/0.ca2dd,0.035a4e9/0.7d2b75,0.0aba95/0.7d2b75,0.035a4e9/0.4d1d0ef,0.0aba95/0.45a9b5b,0.0271/0.7866c1,0.0aba95/0.4d1d0ef,0.0271/0.baeb9,0.04d7c6d/0.47e5ea1,0.04d7c6d/0.baeb9,0.0271/0.4b,0.05f5e1/0.4b,0.0aba95/0.7866c1,0.04190ab/0.760467,0.0aba95/0.466871d,0.08583b/0.2756cd,0.09502f9/0.19b45a5,0.0d1cef/0.15faadb,0.0b71b/0.1caf4ad,0/0.19b45a5,0/0.15faadb,0/0.12ffbd3,0.0713fb3/0.12ffbd3,0/0.25a01c5,0.05f5e1/0.25a01c5,0/0.1eeb7f3,0.04190ab/0.0b71b,0.04190ab/0.04d7c6d,0.06553f1/0.21e66fb,0.0249f/0.25a01c5,0.04190ab/0.1faa3b5,0.a0eebb/0.1faa3b5,0.1caf4ad/0.2e7ddb,0.487ab/0.21e66fb,0.2127b39/0.2e7ddb,0.2127b39/0.40d99,0.2e7ddb/0.39387,0.2127b39/0.15faadb,0.2127b39/0.12ffbd3,0/0.45a9b5b,0/0.1312d,0.2127b39/0.21e66fb,0.2127b39/0.25a01c5,0.2756cd/0.21e66fb,0.18f59e3/0.177,0.2756cd/0.12ffbd3,0.2756cd/0.40d99,0.19/0.2e7ddb,0.13be795/0.19b45a5,0.12ffbd3/0.1e2cc31,0.13be795/0.12ffbd3,0.753/0.229219,0.153bf19/0.21e66fb,0.147d357/0.25a01c5,0.e87547/0.12ffbd3,0.1004ccb/0.21e66fb,0.10c388d/0.25a01c5,0.7d/0.21e66fb,0.f46109/0.1d6e06f,0.f46109/0.19b45a5,0.d09dc3/0.19,0.acda7d/0.1caf4ad,0.177/0.59c78d1,0.2959c8f/1,0.265ed87/0.59c78d1,0.e1113/0.24e1603,0.e1113/0.2363e7f,0.554f245/0.24e1603,0.86b4dd/0.2363e7f,0.525433d/0.24e1603,0.1d6e06f/1,0.2068f77/0.59c78d1,0.1d6e06f/0.5c03c17,0.380743/1,0.47272df/0.2a18851,0.47272df/0.4d7c6d,0.c28cb/0.4d7c6d,0.c28cb/0.36c3033,0.47272df/0.36c3033,0.47272df/0.608f3d,0.14997/0.2363e7f,0.845283/0.8647,0.19/0.59c78d1,0.1dcd65/0.59c78d1,0.1dcd65/1,0.229219/1,0.1a73167/1,0.2e7ddb/1,0.2e7ddb/0.59c78d1,0.ca2dd/0.608f3d,0.525433d/0.6553f1,0.c28cb/0.608f3d,0.4f59435/0.6a18a5,0.47272df/0.6553f1,0.1d6e06f/0.59c78d1,0.c28cb/0.2a18851,0.1fbd/0.3ccbf7,0.47272df/0.3ccbf7,0.ca2dd/0.2a18851,0.525433d/0.2a18851,0.525433d/0.3ccbf7,0.1fbd/0.524121,0.ca2dd/0.4d7c6d,0/0.005f5e1,0.04d7c6d/0.08583b,0.0271/0.005f5e1,0.7d/0.029b927,0/0.059682f,0.04190ab/0.b8c63f,0/0.22551,0.07d2b75/0.1ab3f,0.5efeb1f/0.8647,0.5efeb1f/0.c35,0.e1113/0.c35,0.e1113/0.8647,0.e8b25/0.57bcf,0.d9701/0.c35,0.845283/0.c35,0.2127b39/0.005f5e1,0.24f473/0.039387,0.2127b39/0.04190ab,0.19b45a5/0.005f5e1,0.2127b39/0.1dcd65,0.2127b39/0.16a657,0.18f59e3/0.1dcd65,0.18f59e3/0.f46109,0.2127b39/0.b8c63f,0.14997/0.24e1603,0.5efeb1f/0.24e1603,0.5cc27d9/0.2363e7f,0.e8b25/0.24e1603,0.0271/0.1dcd65,0/0.1dcd65,0.554f245/0.8647,0.5efeb1f/0.2363e7f,0.14997/0.8647,0.14997/0.c35,0.acda7d/0.0713fb3,0.16a657/0.005f5e1,0.07d2b75/0.1dcd65,0.dc8985/0.11e1a3,0.202fbf/0.005f5e1,0.31975/0.1908b1,0.13be795/0.1dcd65,0.dc8985/0.1908b1,0.31975/0.c4b201,0.1241011/0.09502f9,0.1b31d29/0.0d1cef,0.147d357/0.0713fb3,0.2127b39/0.07d2b75,0.40d99/0.04d7c6d,0.18f59e3/0.b8c63f,0.2756cd/0.3cb8e43,0.2756cd/0.33c812b,0.39387/0.300e661,0.8647/0.e7ef,0.8647/0.33c812b,0.66ff3/0.33c812b,0.202fbf/0.3604471,0.16a657/0.15f9,0.1dcd65/0.67b64b,0.f46109/0.300e661,0.f7f49/0.300e661,0.1ab3f/0.38ff379,0.8647/0.3ccbf7,0.153bf19/0.3ccbf7,0.13be795/0.2b95fd5,0.2068f77/0.300e661,0.3d09/0.2b95fd5,0.0249f/0.3ccbf7,0.0249f/0.6ea05,0.3d09/0.3ccbf7,0.04d7c6d/0.300e661,0.04d7c6d/0.38ff379,0.66ff3/0.300e661,0.202fbf/0.4d7c6d,0/0.2d13759,0.66ff3/0.2c54b97,0.66ff3/0.3ccbf7,0/0.3ccbf7,0.35458af/0.9c671,0.15f9/0.4fdec7,0.cf85/0.3604471,0.5/0.e7ef,0.5/0.33c812b,0.94c5f/0.39bdf3b,0.10059/0.67b64b,0.3ef5189/0.39bdf3b,0.3e365c7/0.318bde5,0.6a18a5/0.4fdec7,0.6c7aff/0.3a7cafd,0.04d7c6d/0.3ef5189,0.01312d/0.3ef5189,0.5/0.3cb8e43,0.66ff3/0.e7ef,0.66ff3/0.3ef5189,0.5705d5/0.118c3,0.713fb3/0.3fb3d4b,0.5/0.41f0091,0.8647/0.3cb8e43,0.487ab/0.6c7aff,0.8647/0.41f0091,0.2a18851/1,0.3ef5189/1,0.3e365c7/0.5c03c17,0.5705d5/0.5c03c17,0.1312d/0.1d6e06f,0.525433d/0.1d6e06f,0.7f8dcf/0.1a73167,0.1312d/0.1a73167,0.c35/0.466871d,0.24f473/0.45a9b5b,0.15f9/0.4b,0.407290d/0.47272df,0.21e66fb/0.40d99,0.21e66fb/0.d09dc3,0.5f5e1/0.118244f,0.5f5e1/0.21e66fb,0.21e66fb/0.5f5e1,0.0b71b/0.3604471,0.0b71b/0.318bde5,0/0.318bde5,0.21e66fb/0.c4b201,0.6ea05/0.c4b201,0.265ed87/0.059682f,0.21e66fb/0.005f5e1,0.039387/0.4b1a13,0.7de29/0.21e66fb,0.54a37b/0.19b45a5,0.54a37b/0.5f5e1,0.7de29/0.118244f,0.54a37b/0.d09dc3,0.7de29/0.177825f,0.7de29/0.1caf4ad,0/0.3604471,0/0.9c671,0.01dcd65/0.a4083,0.0b71b/0.9c671,0.5f5e1/0.177825f,0.5f5e1/0.1caf4ad,0.1117/0.177825f,0.1117/0.21e66fb,0.1117/0.1caf4ad,0.2b95fd5/0.005f5e1,0.54a37b/0.005f5e1,0.4fdec7/0.01312d,0.54a37b/0.c4b201,0.2e90edd/0.059682f,0.4b/0.47272df,0.29f63/0.4b,0.0713fb3/0.1dcd65,0.0713fb3/0.11e1a3,0.08583b/0.e87547,0.03d09/0.dc8985,0.05f5e1/0.039387,0.035a4e9/0.0b71b,0.05f5e1/0.0b71b,0.15f9/0.0aba95,0.9c671/0.0aba95,0.15f9/0.005f5e1,0.67b64b/0.10c388d,0.67b64b/0.09502f9,0.3b3b6bf/0.3d09,0.7f8dcf/0.5f5e1,0.7f8dcf/0.1e2cc31,0.baeb9/0.1e2cc31,0.62f197/0.1e2cc31,0.15f9/0.1e2cc31,0.15f9/0.5f5e1,0.5efeb1f/0.0aba95,0.5efeb1f/0.005f5e1,0.56cc9c9/0.0aba95,0.86b4dd/0.10c388d,0.59c78d1/0.3d09,0.86b4dd/0.09502f9,0.67b64b/0.229219,0.436d815/0.12ffbd3,0.6a18a5/0.16a657,0.1312d/0.09502f9,0.1312d/0.10c388d,0.1312d/0.3d09,0.1312d/0.c4b201,0.86b4dd/0.153bf19,0.525433d/0.12ffbd3,0.525433d/0.dc8985,0.48a4a63/0.005f5e1,0.baeb9/0.001312d,0.760467/0.005f5e1,0.56cc9c9/0.0c35,0.9c671/0.0c35,0.baeb9/0.005f5e1,0.6c7aff/0.0c35,0.6c7aff/0.0aba95,0.760467/0.04d7c6d,0.1312d/0.12ffbd3,0.713fb3/0.16b969d,0.3b3b6bf/0.229219,0.e7ef/0.177825f,0.15f9/0.3d09,0.41f0091/0.1d6e06f,0.6edd59/0.1a73167,0.15f9/0.29b927,0.15f9/0.1d6e06f,0.1312d/0.177825f,0.7d2b75/0.39387,0.59c78d1/0.153bf19,0.5c03c17/0.16b969d,0.5efeb1f/0.3d09,0.5efeb1f/0.29b927,0.5efeb1f/0.1d6e06f,0.7f8dcf/0.0c35,0.7f8dcf/0.0aba95,0.c4b201/0.59c78d1,0.3f2e51/0.56cc9c9,0.9eb1/0.249f,0.5/0.5908d0f,0.2ad7413/0.5312eff,0.01312d/0.525433d,0.1443fd/0.249f,0.12ffbd3/0.53d1ac1,0.2756cd/0.249f,0.1d6e06f/0.578b58b,0.67b64b/0.0713fb3,0.3b3b6bf/0.0713fb3,0.59c78d1/0.0713fb3,0.86b4dd/0.0713fb3,0.15f9/0.0713fb3,0.5efeb1f/0.0713fb3,0.19/0.5312eff,0.3cb8e43/0.4e9a873,0.cf85/0.4e9a873,0.e7ef/0.525433d,0.3ef5189/0.525433d,0.713fb3/0.50d6bb9,0.47e5ea1/0.1312d,0.3ef5189/0.4a221e7,0.4a221e7/0.81f029,0.04190ab/0.05f5e1,0.05f5e1/0.035a4e9,0.0c35/0.035a4e9,0.3604471/0.578b58b,0.6edd59/0.56cc9c9,0.73a20d/0.59c78d1,0.0713fb3/0.525433d,0/0.8b7991,0/1,0.0713fb3/0.5017ff7,0.acda7d/1,0.1004ccb/1,0/0.5017ff7,0.5017ff7/0.4f59435,0.5017ff7/1,0.2c1b81/0.4e9a873,0.1b6b0b/0.7866c1,0.2f4fa9f/0.7866c1,0.2127b39/0.4ae0da9,0.1a73167/0.7866c1,0.3f2e51/0.4e9a873,0.c28cb/1,0.27dc50b/0.6c7aff,0.b71b/0.4b,0.27dc50b/0.4c5e52d,0.5017ff7/0.47272df,0.5017ff7/0.aba95,0.380743/0.4b,0.01312d/0.4d1d0ef,0.01312d/0.4b,0.01312d/0.436d815,0.5/0.3ccbf7,0.5705d5/0.6ea05,0.3781bf5/0.3ccbf7,0.5/0.300e661,0.3e365c7/0.2ad7413,0.42aec53/0.43f305,0.442c3d7/0.3ccbf7,0.3e365c7/0.3ccbf7,0.713fb3/0.524121,0.e7ef/0.318bde5,0.713fb3/0.2ad7413,0.713fb3/0.3ccbf7";
			geo0.aV= read(geo0.aVstr).split(",");
			geo0.aU= read(geo0.aUstr).split(",");
			geo0.f="0,1,2,0,1,2,0,2,3,0,2,3,2,1,4,2,1,4,5,1,0,5,1,0,5,6,1,5,6,1,7,8,9,7,8,9,3,a,b,3,a,b,3,9,a,3,9,a,7,9,3,7,9,3,3,4,7,3,4,7,4,3,2,4,3,2,c,d,8,c,d,e,e,c,8,f,c,e,e,f,c,f,10,c,e,10,f,f,11,10,11,a,12,12,a,13,a,11,b,a,12,b,13,11,14,14,15,16,13,b,11,14,17,15,13,14,10,14,16,11,11,15,14,18,19,15,15,11,c,19,18,1a,6,10,e,1b,11,f,6,5,10,1b,1c,11,1,7,4,1,7,4,1,8,7,1,8,7,e,1,6,f,1d,1b,1,e,8,1d,f,e,10,14,15,11,16,10,5,13,10,1c,14,11,0,3,b,0,3,b,0,13,5,1e,14,1c,13,0,b,14,1e,17,11,16,c,18,1f,1a,17,16,11,20,1f,18,17,18,16,20,21,1f,18,17,19,21,20,22,9,8,d,9,8,23,a,9,12,a,9,13,9,d,1a,9,23,24,9,1b,12,9,25,13,9,1a,1b,9,24,25,c,16,d,c,19,d,11,12,17,12,13,26,1a,16,18,24,27,28,16,1a,d,27,24,23,12,19,17,13,29,26,19,12,1b,29,13,25,19,1a,18,29,24,28,1a,19,1b,24,29,25,1c,1d,1e,2a,2b,2c,1c,1f,1d,2a,2d,2b,20,21,22,2e,2f,30,21,23,24,2f,31,32,24,22,21,32,30,2f,25,20,22,33,34,35,26,25,22,34,33,36,27,28,20,37,38,36,20,25,27,36,33,37,29,22,24,39,30,32,29,2a,22,39,3a,30,2b,2a,29,3b,3c,3d,24,2c,29,32,3e,39,21,2d,23,3f,40,41,2e,2d,21,42,43,44,2f,30,23,45,46,31,2f,31,32,47,48,49,2f,32,30,47,49,4a,2d,33,30,4b,4c,4d,2d,30,32,40,4a,49,30,33,23,46,4e,31,23,31,2f,31,4f,45,31,23,2d,48,41,40,2d,32,31,40,49,48,2b,34,35,50,51,52,35,2d,25,52,4b,53,35,25,2b,52,53,50,2c,24,36,3e,32,54,37,27,25,55,37,33,37,28,27,55,38,37,28,37,2e,38,55,42,20,28,2e,2e,56,57,25,2d,37,53,4b,58,2d,2e,37,43,42,55,21,20,2e,2f,2e,57,38,39,2a,59,5a,3c,2a,2b,38,3c,3b,59,3a,38,2b,5b,59,3b,3a,39,38,5b,5a,59,39,3a,26,5a,5b,5c,2a,39,26,3a,5d,2e,2b,25,3a,50,53,5e,25,26,3a,5f,5c,5b,22,2a,26,30,3a,2e,3b,3c,3d,60,61,62,3e,29,3c,63,64,61,3c,3b,3e,61,60,63,34,3e,3b,65,63,60,34,3b,3d,65,60,62,3d,2c,34,62,66,65,29,2c,3d,64,66,62,3d,3c,29,62,61,64,29,3e,2b,64,63,67,34,2b,3e,65,67,63,3f,40,41,68,69,6a,42,40,3f,6b,69,68,43,3f,44,6c,68,6d,45,44,46,6e,6d,6f,44,45,47,70,71,72,44,47,43,73,74,73,48,45,46,75,71,76,45,48,49,71,75,77,45,49,47,71,77,72,49,48,4a,77,75,78,49,4a,42,77,78,6b,49,42,47,77,6b,72,4b,4c,36,79,7a,7b,4d,4b,36,7c,79,7b,4e,33,4c,7d,7e,7f,4d,33,4e,7c,7e,7d,36,24,4d,54,32,80,36,4f,35,54,81,52,4c,4f,36,7a,82,7b,33,2d,4f,4c,4b,81,23,33,4d,31,4e,80,4f,2d,35,81,4b,52,4f,4c,33,82,7a,83,35,34,36,52,51,54,36,34,2c,54,51,3e,4d,24,23,80,32,31,4c,50,51,7a,84,85,4c,51,52,7a,85,83,52,4e,4c,86,7d,7f,4e,52,53,7d,86,87,53,4d,4e,87,7c,7d,53,54,4b,87,88,79,53,4b,4d,87,79,7c,54,50,4c,88,84,7a,54,4c,4b,88,7a,79,54,53,55,88,87,89,54,55,56,88,89,8a,52,57,58,86,8b,8c,58,53,52,8c,87,86,59,51,50,8d,85,84,59,50,54,8d,84,88,54,56,59,88,8a,8d,57,52,51,8e,83,85,51,59,57,85,8d,8e,5a,58,57,8f,8c,8b,58,55,53,8c,89,87,57,59,5b,8e,8d,90,5b,5a,57,90,91,8e,5a,5b,5c,91,90,92,56,5d,5b,8a,93,90,5b,59,56,90,8d,8a,55,5d,56,89,93,8a,46,5a,5c,76,91,92,4a,48,5c,78,75,92,5c,48,46,92,75,76,5c,5b,4a,92,90,78,5e,5f,40,94,95,69,58,5e,55,8c,94,89,41,44,3f,6a,6d,68,41,46,44,6a,6f,6d,41,5a,46,6a,8f,6f,5f,58,41,95,8c,6a,58,5a,41,8c,8f,6a,58,5f,5e,8c,95,94,41,40,5f,6a,69,95,5d,55,5e,93,89,94,43,47,42,6c,72,6b,42,3f,43,6b,68,6c,42,4a,60,6b,78,96,4a,5b,5d,78,90,93,5d,60,4a,93,96,78,5d,5e,60,93,94,96,60,40,42,96,69,6b,40,60,5e,69,96,94,61,62,63,97,98,99,63,64,61,9a,9b,9c,61,64,65,9c,9b,9d,61,65,66,9c,9d,9e,67,66,68,9f,a0,a1,66,67,69,a0,9f,a2,61,66,69,97,a0,a2,69,62,61,a2,98,97,62,69,6a,a3,a4,a5,6b,6a,69,a6,a5,a4,69,67,6b,a4,a7,a6,6b,67,68,a6,a7,a8,6c,65,6d,a9,9d,aa,65,6c,66,9d,a9,9e,6e,6f,70,ab,ac,ad,6e,70,1e,ab,ad,ae,6e,1e,1d,ab,ae,af,6e,1d,1f,ab,af,b0,1f,71,6e,b0,b1,ab,72,71,1f,b2,b3,2d,72,73,74,b2,b4,b5,74,71,72,b5,b3,b2,73,68,75,b4,a8,b6,75,74,73,b6,b5,b4,66,75,68,a0,b7,a1,76,77,63,b8,b9,ba,76,63,62,b8,ba,a3,77,76,78,b9,b8,bb,78,70,6f,bb,bc,bd,6f,77,78,bd,b9,bb,79,78,76,be,bb,b8,79,73,72,be,b4,b2,79,6b,73,be,a6,b4,79,76,6a,be,b8,a5,79,72,1c,be,b2,2a,79,7a,78,be,bf,bb,79,6a,6b,be,a5,a6,79,1c,7a,be,2a,bf,6a,76,62,a5,b8,a3,6b,68,73,a6,a8,b4,70,78,7a,bc,bb,bf,7a,1e,70,bf,2c,bc,1e,7a,1c,2c,bf,2a,1c,72,1f,2a,b2,2d,75,7b,74,c0,c1,c2,74,7b,7c,c2,c1,c3,7d,63,7b,c4,c5,c1,7d,64,63,c4,c6,c5,63,77,7b,c5,c7,c1,7e,7f,80,c8,c9,ca,81,82,7e,cb,cc,c8,7e,80,81,c8,ca,cb,6d,80,7f,aa,cd,ce,83,84,85,cf,d0,d1,86,84,83,d2,d0,cf,83,87,86,d3,d4,d5,87,88,86,d4,d6,d5,87,89,88,d4,d7,d6,66,6c,75,9e,a9,d8,6c,8a,7d,d9,da,db,75,6c,7d,dc,c6,dd,64,7d,8b,9a,db,9b,8c,65,64,de,9d,9b,64,8b,8c,9b,cb,de,82,81,8b,cc,cb,9b,8b,8a,82,9b,da,cc,7d,8a,8b,db,da,9b,80,8c,81,cd,de,ca,8c,8b,81,de,cb,ca,8a,6c,8d,da,d9,df,8a,8d,7e,da,df,c8,8d,7f,7e,e0,ce,e1,8d,6d,7f,e0,aa,ce,6c,6d,8d,a9,aa,e0,7e,82,8a,c8,cc,da,6d,8c,80,aa,de,cd,65,8c,6d,a9,aa,e0,7b,75,7d,c1,c0,c4,7b,8e,7c,c1,e2,c3,8e,7b,77,e2,c1,c7,7c,71,74,c3,e3,c2,84,7c,8e,d0,c3,e2,8e,77,6f,e2,c7,e4,6f,8f,8e,e4,e5,e2,7c,90,71,c3,e6,e3,90,7c,84,e6,c3,d0,84,86,90,d0,d2,e6,91,90,86,e7,e8,d5,91,6e,90,e7,e9,e8,6e,91,92,e9,e7,ea,90,6e,71,e8,e9,e4,8f,6e,92,e5,e9,ea,8f,6f,6e,e5,e4,e9,86,88,91,d5,d6,e7,93,94,95,eb,ec,ed,8e,8f,93,e2,e5,eb,96,97,94,ee,ef,ec,97,96,85,ef,ee,d1,97,85,84,ef,d1,d0,95,97,8e,ed,ef,e2,8e,97,84,e2,ef,d0,8e,93,95,e2,eb,ed,97,95,94,ef,ed,ec,92,93,8f,ea,eb,e5,89,96,94,d7,ee,ec,89,94,98,d7,ec,f0,88,92,91,d6,ea,e7,92,88,98,ea,d6,f0,92,98,93,ea,f0,eb,98,88,89,f0,d6,d7,94,93,98,ec,eb,f0,99,9a,9b,f1,f2,f3,99,9c,9a,f1,f4,f2,9a,9d,9b,f2,f5,f3,9d,9a,9c,f5,f2,f4,9d,9c,9e,f5,f4,f6,9f,a0,a1,f7,f8,f9,a0,9f,a2,f8,f7,fa,a3,a0,a2,fb,f8,fa,a0,a4,a1,f8,fc,f9,a4,a0,a3,fc,f8,fb,a5,a6,a7,fd,fe,ff,a5,a7,9b,fd,ff,f3,a5,9b,a8,fd,f3,100,a9,aa,ab,101,102,103,aa,a9,ac,102,101,104,a3,a9,ab,fb,101,103,a4,ad,9e,fc,105,106,a9,a7,ac,101,ff,104,a1,99,9f,f9,f1,f7,ad,a8,9d,107,100,f5,a3,ad,a4,fb,105,fc,9f,ae,a2,f7,108,fa,9e,ad,9d,f6,107,f5,9b,9f,99,f3,f7,f1,9f,9b,ae,f7,f3,108,ae,9b,a7,108,f3,ff,9d,a8,9b,f5,100,f3,a2,ae,a7,fa,108,ff,a3,ab,af,fb,103,109,a8,ad,af,100,107,10a,b0,a8,af,10b,100,10a,a8,b0,a5,100,10b,fd,a2,a9,a3,fa,101,fb,aa,b0,af,102,10c,109,af,ab,aa,109,103,102,af,ad,a3,109,105,fb,a7,a9,a2,ff,101,fa,a7,a6,ac,ff,fe,104,b1,b2,b3,0,2,1,b1,b4,b2,0,3,2,b2,b5,b3,2,4,1,b6,b1,b3,5,0,1,b6,b3,b7,5,1,6,b8,b9,ba,7,9,8,b4,bb,bc,3,b,a,b4,bc,b9,3,a,9,b8,b4,b9,7,3,9,b4,b8,b5,3,7,4,b5,b2,b4,4,2,3,bd,ba,be,c,e,d,bf,ba,bd,f,e,c,bf,bd,c0,f,c,10,bf,c0,c1,f,10,11,c2,c3,bc,12,13,a,bc,bb,c2,a,b,12,c4,c5,c2,14,16,15,c4,c2,bb,14,15,17,c4,c1,c5,14,11,16,c2,c5,c6,18,15,19,c6,bd,c2,19,1a,18,b7,bf,c1,1b,f,11,b7,c1,b6,1b,11,1c,b3,b5,b8,1,4,7,b3,b8,ba,1,7,8,bf,b7,b3,f,1b,1d,b3,ba,bf,1d,e,f,c1,c6,c5,11,10,16,b6,c1,c4,1c,11,14,b1,bb,b4,0,b,3,b1,b6,c4,1e,1c,14,c4,bb,b1,14,17,1e,c2,bd,c7,18,1a,1f,c8,c2,c7,20,18,1f,c8,c7,c9,20,1f,21,c9,ca,c8,21,22,20,b9,be,ba,9,23,8,bc,c3,b9,a,13,9,b9,cb,be,9,24,23,b9,c3,cc,9,13,25,b9,cc,cb,9,25,24,bd,be,c7,c,d,19,c2,c8,c3,12,26,13,cb,c9,c7,24,28,27,c7,be,cb,27,23,24,c3,c8,ca,13,26,29,ca,cc,c3,29,25,13,ca,c9,cb,29,28,24,cb,cc,ca,24,25,29,cd,ce,cf,10d,10e,10f,cd,cf,d0,10d,10f,110,cf,ce,d1,10f,10e,111,d1,d0,cf,111,110,10f,d1,9e,d0,111,f6,110,d2,d3,d4,112,113,114,d4,d5,d2,114,115,112,d6,d5,d4,116,115,114,d4,d3,d7,114,113,117,d7,d6,d4,117,116,114,d7,d8,a4,118,119,fc,d7,a4,9e,118,fc,106,d9,d0,da,11a,110,11b,cd,d0,d9,10d,110,11a,db,d9,da,11c,11a,11b,d3,cd,dc,113,10d,11d,d3,d8,d7,113,11e,117,da,d0,9e,11b,110,f6,d9,db,dd,11a,11c,11f,d9,dd,cd,11a,11f,10d,dc,cd,dd,11d,10d,11f,de,da,9c,120,11b,f4,99,de,9c,f1,120,f4,db,da,de,11c,11b,120,a1,df,99,f9,121,f1,a1,a4,d8,f9,fc,119,da,9e,9c,11b,f6,f4,de,e0,db,120,122,11c,de,99,e0,120,f1,122,df,e0,99,121,122,f1,e1,e2,e3,123,124,125,e3,e4,e1,125,126,123,e5,e6,e7,127,128,129,e8,e5,e7,12a,127,129,df,e9,e0,121,12b,122,df,ea,e9,121,12c,12b,a1,ea,df,f9,12c,121,dc,dd,eb,11d,11f,12d,dc,eb,ec,11d,12d,12e,d3,dc,ec,113,11d,12e,ed,ee,ef,12f,130,131,ed,f0,f1,12f,132,133,f1,f2,f3,134,135,136,ee,ed,f4,137,138,139,f4,f5,ee,139,13a,137,f3,f2,f6,136,135,13b,f7,f6,f2,13c,13d,13e,f6,f8,f3,13d,13f,140,f6,f9,f8,13d,141,13f,f6,f7,fa,13d,13c,142,f6,fa,f9,13d,142,141,f1,ee,f5,134,143,144,f5,fb,fc,144,145,146,fc,f1,f5,146,134,144,f1,f3,ee,134,136,143,ed,ef,fd,12f,131,147,ed,fe,f0,12f,148,132,ed,fd,fe,12f,147,148,ee,f8,ef,130,13f,131,ef,f8,ff,131,13f,149,ff,fd,ef,149,147,131,f0,100,f1,132,14a,133,fe,101,100,148,14b,14a,fe,100,f0,148,14a,132,fe,fd,ff,148,147,149,ff,101,fe,149,14b,148,f8,ee,f3,13f,130,140,f8,f9,ff,13f,141,149,100,f7,f2,14a,13c,13e,f2,f1,100,13e,133,14a,ff,f9,fa,149,141,142,ff,fa,101,149,142,14b,100,101,fa,14a,14b,142,fa,f7,100,142,13c,14a,f4,fb,f5,139,14c,13a,fc,102,f1,14d,14e,14f,103,102,fc,150,14e,14d,fc,fb,103,14d,14c,150,f4,103,fb,139,150,14c,102,ed,f1,14e,138,14f,f4,ed,103,139,138,150,102,103,ed,14e,150,138,ec,104,d3,12e,151,113,a1,105,ea,f9,152,12c,106,107,108,153,154,155,108,107,109,155,154,156,108,109,106,155,156,153,10a,10b,10c,157,158,159,10c,10d,10a,159,159,157,10a,10e,10b,15a,15b,15c,10f,110,10a,15d,15e,15f,10d,111,112,160,161,162,113,10e,10a,163,164,165,112,10a,10d,162,165,160,112,113,10a,162,163,165,10d,10c,111,166,167,168,114,10d,115,169,16a,16b,116,117,10f,16c,16d,15d,116,10f,10a,16c,15d,15f,118,110,10f,16e,15e,15d,110,118,119,15e,16e,16f,11a,118,10f,170,16e,15d,118,11a,11b,16e,170,171,118,11c,119,16e,172,16f,11b,11c,118,171,172,16e,11d,10d,114,173,16a,169,11d,114,11e,173,169,174,11f,114,115,175,169,16b,115,119,11f,16b,16f,175,11a,114,11f,170,169,175,11f,11b,11a,175,171,170,11f,119,11c,175,16f,172,11b,11f,11c,171,175,172,10c,10b,120,176,177,178,111,10c,121,168,167,179,122,10b,10e,17a,15c,15b,10b,122,120,15c,17a,17b,123,120,122,17c,17b,17a,113,124,123,17d,17e,17c,113,123,10e,17d,17c,15b,10e,123,122,15b,17c,17a,10f,117,125,15d,16d,17f,10f,125,11a,15d,17f,170,125,11e,114,17f,174,169,114,11a,125,169,170,17f,116,126,117,16c,180,16d,10a,127,116,15f,181,16c,128,10a,129,182,15f,183,10a,128,127,15f,182,181,127,12a,12b,181,184,185,12a,127,128,184,181,182,12b,116,127,185,16c,181,12b,126,116,185,180,16c,e5,12b,12a,127,185,184,12c,e5,12a,186,187,184,12c,128,129,186,182,183,12c,12a,128,186,184,182,126,12b,12d,180,185,188,126,12d,125,180,188,17f,126,125,117,180,17f,16d,e8,12b,e5,12a,185,127,12b,e8,12d,185,12a,188,11d,11e,12e,173,174,189,10d,11d,12f,16a,173,18a,130,129,10d,18b,18c,16a,10d,12f,130,16a,18a,18b,12f,e7,e6,18a,129,128,e6,130,12f,128,18b,18a,e7,12f,11d,129,18a,173,e7,11d,12e,129,173,189,12c,e6,e5,18d,128,18e,12c,129,130,18d,18c,18b,12c,130,e6,18d,18b,128,12e,12d,e7,189,188,129,12e,11e,125,189,174,17f,12e,125,12d,189,17f,188,e7,12d,e8,129,188,12a,10c,120,121,167,17b,179,131,121,120,18f,179,17b,123,131,120,17c,18f,17b,124,131,123,17e,18f,17c,112,124,113,190,17e,17d,112,111,131,190,168,18f,112,131,124,190,18f,17e,111,121,131,168,179,18f,132,133,134,ad,ac,191,135,136,133,192,193,123,133,132,137,123,194,195,133,137,135,123,195,192,138,139,13a,196,197,198,13b,136,13c,199,193,19a,13d,136,13b,15e,19b,19c,13e,10d,134,16b,16a,19d,133,136,13d,19e,19b,15e,13d,13e,133,15e,16b,19e,13b,10a,13d,19c,15f,15e,10a,13b,129,15f,19c,183,139,129,13b,19f,183,19c,134,133,13e,19d,19e,16b,10d,129,134,16a,18c,19d,139,134,129,1a0,19d,18c,13b,13a,139,199,198,197,13b,13f,13a,199,1a1,198,13b,13c,13f,199,19a,1a1,140,141,142,1a2,1a3,1a4,140,142,143,1a2,1a4,1a5,140,143,144,1a2,1a5,1a6,140,144,145,1a2,1a6,1a7,140,145,146,1a2,1a7,1a8,140,146,141,1a2,1a8,1a3,144,147,145,1a6,1a9,1a7,144,145,148,1aa,1ab,1ac,142,141,149,1a4,1a3,1ad,143,142,149,1a5,1a4,1ad,14a,147,144,1ae,1a9,1a6,14a,144,143,1ae,1a6,1a5,149,14a,143,1ad,1ae,1a5,e4,e3,149,126,125,1ad,14b,147,14a,1af,1a9,1ae,14a,149,e3,1ae,1ad,125,e3,14b,14a,125,1af,1ae,139,14c,14d,1b0,1b1,1b2,139,138,14c,1b0,1b3,1b1,14d,134,139,1b2,191,1b0,134,14d,e2,191,1b2,1b4,134,e2,e1,191,1b4,1b5,134,e1,132,191,1b5,ad,14e,14c,138,1b6,1b1,1b3,147,14e,145,1a9,1b7,1a7,14c,14e,147,1b8,1b7,1a9,13f,13c,14f,1a1,19a,1b9,13f,148,13a,1a1,1ba,198,13f,14f,148,1a1,1b9,1ba,146,150,141,1a8,1bb,1a3,137,149,141,195,1ad,1a3,137,132,149,195,194,1ad,14f,151,152,1b9,1bc,1bd,153,151,14f,1be,1bc,1b9,135,137,153,192,195,1be,153,141,150,1be,1a3,1bb,141,153,137,1a3,1be,195,14d,14c,147,1bf,1b8,1a9,14d,147,14b,1bf,1a9,1af,e1,e4,149,123,126,1ad,e1,149,132,123,1ad,194,e2,14d,14b,124,1bf,1af,14b,e3,e2,1af,125,124,154,dd,db,1c0,11f,11c,154,155,dd,1c0,1c1,11f,156,153,150,1c2,1be,1bb,155,156,150,1c1,1c2,1bb,14e,104,145,1b7,151,1a7,104,14e,157,151,1b7,1c3,157,158,104,1c3,1c4,151,eb,146,ec,12d,1a8,12e,eb,dd,155,12d,11f,1c1,145,104,ec,1a7,151,12e,150,eb,155,1bb,12d,1c1,150,146,eb,1bb,1a8,12d,145,ec,146,1a7,12e,1a8,158,d8,d3,1c4,11e,113,d3,104,158,113,151,1c4,13c,136,135,19a,193,192,135,153,13c,192,1be,19a,154,db,e0,1c0,11c,122,154,e0,159,1c0,122,1c5,154,159,155,1c0,1c5,1c1,156,151,153,1c2,1bc,1be,159,151,156,1c5,1bc,1c2,156,155,159,1c2,1c1,1c5,13a,14e,138,198,1c6,196,14e,13a,148,1c6,198,1ba,14e,148,105,1c6,1ba,152,105,157,14e,152,1c7,1c6,157,105,158,1c7,152,1c8,14f,13c,153,1b9,19a,1be,14f,152,148,1b9,1bd,1ba,e9,ea,152,12b,12c,1bd,e9,159,e0,12b,1c5,122,148,ea,105,1ba,12c,152,151,159,e9,1bc,1c5,12b,151,e9,152,1bc,12b,1bd,148,152,ea,1ba,1bd,12c,158,105,a1,1c8,152,f9,a1,d8,158,f9,119,1c8,15a,15b,15c,1c9,1ca,1cb,15a,ce,15b,1c9,10e,1ca,15a,15d,ce,1c9,1cc,10e,15e,15f,160,1cd,1ce,1cf,160,161,15e,1cf,1d0,1cd,d6,15f,15e,116,1ce,1cd,d7,9e,162,117,11e,1d1,15e,161,15b,1cd,1d0,1ca,d3,d2,cd,113,112,10d,162,d1,15d,107,111,1cc,d6,d7,162,116,117,1d1,d2,d5,163,112,115,1d2,9e,d1,162,f6,111,107,ce,cd,d2,10e,10d,112,d2,163,ce,112,1d2,10e,163,15b,ce,1d2,1ca,10e,d1,ce,15d,111,10e,1cc,d5,15b,163,115,1ca,1d2,d6,164,15f,116,1d3,1ce,15d,164,162,1cc,10a,107,165,164,15d,10b,10a,1cc,15d,15a,165,1cc,1c9,10b,d5,d6,15e,115,116,1cd,160,164,165,1cf,1d3,1d4,164,160,15f,1d3,1cf,1ce,164,d6,162,1d3,116,1d1,15b,d5,15e,1ca,115,1cd,15b,161,15c,1ca,1d0,1cb";
			geos.push(geo0);
		}

		private function buildMaterials():void
		{
		}
		private function cleanUp():void
		{
			for(var i:int = 0;i<1;++i){
				objs["obj"+i] == null;
			}
			aV = null;
			aU = null;
		}

		private function addContainers():void
		{}


		public function get meshes():Array
		{
			return oList;
		}


		private function read(str:String):String
		{
			var start:int= 0;
			var chunk:String;
			var end:int= 0;
			var dec:String = "";
			var charcount:int = str.length;
			for(var i:int = 0;i<charcount;++i){
				if (str.charCodeAt(i)>=44 && str.charCodeAt(i)<= 48 ){
					dec+= str.substring(i, i+1);
				}else{
					start = i;
					chunk = "";
					while(str.charCodeAt(i)!=44 && str.charCodeAt(i)!= 45 && str.charCodeAt(i)!= 46 && str.charCodeAt(i)!= 47 && i<=charcount){
						i++;
					}
					chunk = ""+parseInt("0x"+str.substring(start, i), 16 );
					dec+= chunk;
					i--;
				}
			}
			return dec;
		}

	}
}