<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3b75c9a8-b1be-45a2-b5b5-f03218029573(typesystem_examples.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="1ka" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.typechecking(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="k8ev" ref="r:f39afe13-666a-48f2-9d7c-2f9366f78fe5(jetbrains.mps.typesystemEngine.checker)" />
    <import index="d6hs" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors.item(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="ev0w" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.typechecking.backend(MPS.Core/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1732176556423009631" name="jetbrains.mps.baseLanguage.structure.MultiLineComment" flags="ng" index="2lOVwT">
        <child id="1732176556423038857" name="lines" index="2lOMFJ" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5497648299878491908" name="jetbrains.mps.baseLanguage.structure.BaseVariableReference" flags="nn" index="1M0zk4">
        <reference id="5497648299878491909" name="baseVariableDeclaration" index="1M0zk5" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1185805035213" name="jetbrains.mps.lang.typesystem.structure.WhenConcreteStatement" flags="nn" index="nvevp">
        <child id="1185805047793" name="body" index="nvhr_" />
        <child id="1185805056450" name="argument" index="nvjzm" />
        <child id="1205761991995" name="argumentRepresentator" index="2X0Ygz" />
      </concept>
      <concept id="1220357310820" name="jetbrains.mps.lang.typesystem.structure.AddDependencyStatement" flags="nn" index="yXGxS">
        <child id="1220357350423" name="dependency" index="yXQkb" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1205762105978" name="jetbrains.mps.lang.typesystem.structure.WhenConcreteVariableDeclaration" flags="ng" index="2X1qdy" />
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="3937244445246642777" name="jetbrains.mps.lang.typesystem.structure.AbstractReportStatement" flags="ng" index="1urrMJ">
        <child id="3937244445246642781" name="nodeToReport" index="1urrMF" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174643105530" name="jetbrains.mps.lang.typesystem.structure.InferenceRule" flags="ig" index="1YbPZF" />
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1883223317721008708" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfStatement" flags="nn" index="Jncv_">
        <reference id="1883223317721008712" name="nodeConcept" index="JncvD" />
        <child id="1883223317721008709" name="body" index="Jncv$" />
        <child id="1883223317721008711" name="variable" index="JncvA" />
        <child id="1883223317721008710" name="nodeExpression" index="JncvB" />
      </concept>
      <concept id="1883223317721008713" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVariable" flags="ng" index="JncvC" />
      <concept id="1883223317721107059" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVarReference" flags="nn" index="Jnkvi" />
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
    </language>
  </registry>
  <node concept="18kY7G" id="3fo57vXTqdw">
    <property role="TrG5h" value="CHECK_OTHER_ROOT" />
    <node concept="3clFbS" id="3fo57vXTqdx" role="18ibNy">
      <node concept="Jncv_" id="3fo57vXTLUP" role="3cqZAp">
        <ref role="JncvD" to="tpee:g7uibYu" resolve="ClassifierType" />
        <node concept="2OqwBi" id="3fo57vXTMmz" role="JncvB">
          <node concept="1YBJjd" id="3fo57vXTLZw" role="2Oq$k0">
            <ref role="1YBMHb" node="3fo57vXTqd_" resolve="imd" />
          </node>
          <node concept="3TrEf2" id="3fo57vXTMOX" role="2OqNvi">
            <ref role="3Tt5mk" to="tpee:fzclF7X" resolve="returnType" />
          </node>
        </node>
        <node concept="3clFbS" id="3fo57vXTLUT" role="Jncv$">
          <node concept="3SKdUt" id="3fo57vXU$Al" role="3cqZAp">
            <node concept="1PaTwC" id="3fo57vXU$Am" role="1aUNEU">
              <node concept="3oM_SD" id="3fo57vXUBzS" role="1PaTwD">
                <property role="3oM_SC" value="navigate" />
              </node>
              <node concept="3oM_SD" id="3fo57vXUBzU" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="3fo57vXUBzX" role="1PaTwD">
                <property role="3oM_SC" value="another" />
              </node>
              <node concept="3oM_SD" id="3fo57vXUB$1" role="1PaTwD">
                <property role="3oM_SC" value="root" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3fo57vXU8zV" role="3cqZAp">
            <node concept="3cpWsn" id="3fo57vXU8zW" role="3cpWs9">
              <property role="TrG5h" value="otherRoot" />
              <node concept="3Tqbb2" id="3fo57vXU8dd" role="1tU5fm">
                <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
              </node>
              <node concept="2OqwBi" id="3fo57vXU8zX" role="33vP2m">
                <node concept="Jnkvi" id="3fo57vXU8zY" role="2Oq$k0">
                  <ref role="1M0zk5" node="3fo57vXTLUV" resolve="ct" />
                </node>
                <node concept="3TrEf2" id="3fo57vXU8zZ" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:g7uigIF" resolve="classifier" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3fo57vXTPx2" role="3cqZAp">
            <node concept="3cpWsn" id="3fo57vXTPx3" role="3cpWs9">
              <property role="TrG5h" value="fields" />
              <node concept="2I9FWS" id="3fo57vXTPll" role="1tU5fm">
                <ref role="2I9WkF" to="tpee:f$Wx3kv" resolve="StaticFieldDeclaration" />
              </node>
              <node concept="2OqwBi" id="3fo57vXTPx4" role="33vP2m">
                <node concept="37vLTw" id="3fo57vXU8$0" role="2Oq$k0">
                  <ref role="3cqZAo" node="3fo57vXU8zW" resolve="otherRoot" />
                </node>
                <node concept="2Rf3mk" id="3fo57vXTPx6" role="2OqNvi">
                  <node concept="1xMEDy" id="3fo57vXTPx7" role="1xVPHs">
                    <node concept="chp4Y" id="3fo57vXTPx8" role="ri$Ld">
                      <ref role="cht4Q" to="tpee:f$Wx3kv" resolve="StaticFieldDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3fo57vXUAzu" role="3cqZAp" />
          <node concept="3SKdUt" id="3fo57vXUBoR" role="3cqZAp">
            <node concept="1PaTwC" id="3fo57vXUBoS" role="1aUNEU">
              <node concept="3oM_SD" id="3fo57vXUByu" role="1PaTwD">
                <property role="3oM_SC" value="try" />
              </node>
              <node concept="3oM_SD" id="3fo57vXUByw" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="3fo57vXUByz" role="1PaTwD">
                <property role="3oM_SC" value="submit" />
              </node>
              <node concept="3oM_SD" id="3fo57vXUByB" role="1PaTwD">
                <property role="3oM_SC" value="some" />
              </node>
              <node concept="3oM_SD" id="3fo57vXUByG" role="1PaTwD">
                <property role="3oM_SC" value="additional" />
              </node>
              <node concept="3oM_SD" id="3fo57vXUByM" role="1PaTwD">
                <property role="3oM_SC" value="dependencies" />
              </node>
              <node concept="3oM_SD" id="3fo57vXUByT" role="1PaTwD">
                <property role="3oM_SC" value="for" />
              </node>
              <node concept="3oM_SD" id="3fo57vXUBz1" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="3fo57vXUBza" role="1PaTwD">
                <property role="3oM_SC" value="type" />
              </node>
              <node concept="3oM_SD" id="3fo57vXUBzk" role="1PaTwD">
                <property role="3oM_SC" value="system" />
              </node>
              <node concept="3oM_SD" id="3fo57vXUBzv" role="1PaTwD">
                <property role="3oM_SC" value="(won't" />
              </node>
              <node concept="3oM_SD" id="3fo57vXUBzF" role="1PaTwD">
                <property role="3oM_SC" value="help)" />
              </node>
            </node>
          </node>
          <node concept="yXGxS" id="3fo57vXUxDm" role="3cqZAp">
            <node concept="37vLTw" id="3fo57vXUxJS" role="yXQkb">
              <ref role="3cqZAo" node="3fo57vXU8zW" resolve="otherRoot" />
            </node>
          </node>
          <node concept="3clFbF" id="3fo57vXUiPl" role="3cqZAp">
            <node concept="2OqwBi" id="3fo57vXUptq" role="3clFbG">
              <node concept="37vLTw" id="3fo57vXUiPj" role="2Oq$k0">
                <ref role="3cqZAo" node="3fo57vXTPx3" resolve="fields" />
              </node>
              <node concept="2es0OD" id="3fo57vXUuF8" role="2OqNvi">
                <node concept="1bVj0M" id="3fo57vXUuFa" role="23t8la">
                  <node concept="3clFbS" id="3fo57vXUuFb" role="1bW5cS">
                    <node concept="yXGxS" id="3fo57vXUuJm" role="3cqZAp">
                      <node concept="37vLTw" id="3fo57vXUuMe" role="yXQkb">
                        <ref role="3cqZAo" node="3fo57vXUuFc" resolve="it" />
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="3fo57vXUuFc" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="3fo57vXUuFd" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3fo57vXU_ak" role="3cqZAp" />
          <node concept="3SKdUt" id="3fo57vXU__N" role="3cqZAp">
            <node concept="1PaTwC" id="3fo57vXU__O" role="1aUNEU">
              <node concept="3oM_SD" id="3fo57vXU_Fz" role="1PaTwD">
                <property role="3oM_SC" value="now" />
              </node>
              <node concept="3oM_SD" id="3fo57vXU_G0" role="1PaTwD">
                <property role="3oM_SC" value="try" />
              </node>
              <node concept="3oM_SD" id="3fo57vXU_G3" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="3fo57vXU_G7" role="1PaTwD">
                <property role="3oM_SC" value="get" />
              </node>
              <node concept="3oM_SD" id="3fo57vXU_Gc" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="3fo57vXU_Gi" role="1PaTwD">
                <property role="3oM_SC" value="types" />
              </node>
              <node concept="3oM_SD" id="3fo57vXU_Gp" role="1PaTwD">
                <property role="3oM_SC" value="of" />
              </node>
              <node concept="3oM_SD" id="3fo57vXU_Gx" role="1PaTwD">
                <property role="3oM_SC" value="nodes" />
              </node>
              <node concept="3oM_SD" id="3fo57vXU_GE" role="1PaTwD">
                <property role="3oM_SC" value="in" />
              </node>
              <node concept="3oM_SD" id="3fo57vXU_GO" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="3fo57vXU_GZ" role="1PaTwD">
                <property role="3oM_SC" value="other" />
              </node>
              <node concept="3oM_SD" id="3fo57vXU_Hb" role="1PaTwD">
                <property role="3oM_SC" value="root" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="3fo57vXUA7T" role="3cqZAp">
            <node concept="1PaTwC" id="3fo57vXUA7U" role="1aUNEU">
              <node concept="3oM_SD" id="3fo57vXUAyt" role="1PaTwD">
                <property role="3oM_SC" value="(this" />
              </node>
              <node concept="3oM_SD" id="3fo57vXUAyv" role="1PaTwD">
                <property role="3oM_SC" value="works" />
              </node>
              <node concept="3oM_SD" id="3fo57vXUAyy" role="1PaTwD">
                <property role="3oM_SC" value="in" />
              </node>
              <node concept="3oM_SD" id="3fo57vXUAyA" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="3fo57vXUAyF" role="1PaTwD">
                <property role="3oM_SC" value="editor," />
              </node>
              <node concept="3oM_SD" id="3fo57vXUAyL" role="1PaTwD">
                <property role="3oM_SC" value="but" />
              </node>
              <node concept="3oM_SD" id="3fo57vXUAyS" role="1PaTwD">
                <property role="3oM_SC" value="doesn't" />
              </node>
              <node concept="3oM_SD" id="3fo57vXUAz0" role="1PaTwD">
                <property role="3oM_SC" value="with" />
              </node>
              <node concept="3oM_SD" id="3fo57vXUAz9" role="1PaTwD">
                <property role="3oM_SC" value="&quot;Check" />
              </node>
              <node concept="3oM_SD" id="3fo57vXUAzj" role="1PaTwD">
                <property role="3oM_SC" value="Model&quot;)" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3fo57vXTCR8" role="3cqZAp">
            <node concept="3cpWsn" id="3fo57vXTCR9" role="3cpWs9">
              <property role="TrG5h" value="checker" />
              <node concept="3uibUv" id="3fo57vXTCRa" role="1tU5fm">
                <ref role="3uigEE" to="1ka:~TypecheckingFacade" resolve="TypecheckingFacade" />
              </node>
              <node concept="2YIFZM" id="3fo57vXTCRO" role="33vP2m">
                <ref role="37wK5l" to="1ka:~TypecheckingFacade.getFromContext()" resolve="getFromContext" />
                <ref role="1Pybhc" to="1ka:~TypecheckingFacade" resolve="TypecheckingFacade" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3fo57vXWnaM" role="3cqZAp" />
          <node concept="3SKdUt" id="3fo57vXWmU5" role="3cqZAp">
            <node concept="1PaTwC" id="3fo57vXWmU6" role="1aUNEU">
              <node concept="3oM_SD" id="3fo57vXWmU7" role="1PaTwD">
                <property role="3oM_SC" value="we" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWmU8" role="1PaTwD">
                <property role="3oM_SC" value="can" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWmU9" role="1PaTwD">
                <property role="3oM_SC" value="do" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWmUa" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWmUb" role="1PaTwD">
                <property role="3oM_SC" value="workaround" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWmUc" role="1PaTwD">
                <property role="3oM_SC" value="which" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWmUd" role="1PaTwD">
                <property role="3oM_SC" value="runs" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWmUe" role="1PaTwD">
                <property role="3oM_SC" value="an" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWmUf" role="1PaTwD">
                <property role="3oM_SC" value="isolated" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWmUg" role="1PaTwD">
                <property role="3oM_SC" value="typecheck" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWmUh" role="1PaTwD">
                <property role="3oM_SC" value="for" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWmUi" role="1PaTwD">
                <property role="3oM_SC" value="otherRoot," />
              </node>
              <node concept="3oM_SD" id="3fo57vXWmUj" role="1PaTwD">
                <property role="3oM_SC" value="but" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWmUk" role="1PaTwD">
                <property role="3oM_SC" value="this" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWmUl" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWmUm" role="1PaTwD">
                <property role="3oM_SC" value="not" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWmUn" role="1PaTwD">
                <property role="3oM_SC" value="scalable" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWmUo" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3fo57vXWaIP" role="3cqZAp">
            <node concept="2YIFZM" id="3fo57vXWaIQ" role="3clFbG">
              <ref role="37wK5l" node="3fo57vXVKZn" resolve="runIsolatedChecker" />
              <ref role="1Pybhc" node="3fo57vXVKYg" resolve="InefficientWorkaround" />
              <node concept="37vLTw" id="3fo57vXWaIR" role="37wK5m">
                <ref role="3cqZAo" node="3fo57vXU8zW" resolve="otherRoot" />
              </node>
              <node concept="37vLTw" id="3fo57vXWaIS" role="37wK5m">
                <ref role="3cqZAo" node="3fo57vXTPx3" resolve="fields" />
              </node>
              <node concept="37vLTw" id="3fo57vXWaIT" role="37wK5m">
                <ref role="3cqZAo" node="3fo57vXTCR9" resolve="checker" />
              </node>
              <node concept="Xl_RD" id="3fo57vXWaIU" role="37wK5m">
                <property role="Xl_RC" value="checking rule (isolated)" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3fo57vXWnj0" role="3cqZAp" />
          <node concept="3SKdUt" id="3fo57vXWnGg" role="3cqZAp">
            <node concept="1PaTwC" id="3fo57vXWnGh" role="1aUNEU">
              <node concept="3oM_SD" id="3fo57vXWnOD" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWnOF" role="1PaTwD">
                <property role="3oM_SC" value="following" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWnOI" role="1PaTwD">
                <property role="3oM_SC" value="will" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWnOM" role="1PaTwD">
                <property role="3oM_SC" value="fail" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWnOR" role="1PaTwD">
                <property role="3oM_SC" value="if" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWnOX" role="1PaTwD">
                <property role="3oM_SC" value="called" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWnP4" role="1PaTwD">
                <property role="3oM_SC" value="via" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWnPc" role="1PaTwD">
                <property role="3oM_SC" value="&quot;Check" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWnPl" role="1PaTwD">
                <property role="3oM_SC" value="Model&quot;" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="3fo57vXWocA" role="3cqZAp">
            <node concept="1PaTwC" id="3fo57vXWocB" role="1aUNEU">
              <node concept="3oM_SD" id="3fo57vXWola" role="1PaTwD">
                <property role="3oM_SC" value="note" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWolc" role="1PaTwD">
                <property role="3oM_SC" value="that" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWolf" role="1PaTwD">
                <property role="3oM_SC" value="it" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWolj" role="1PaTwD">
                <property role="3oM_SC" value="will" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWom2" role="1PaTwD">
                <property role="3oM_SC" value="despite" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWomn" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWomu" role="1PaTwD">
                <property role="3oM_SC" value="correct" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWomA" role="1PaTwD">
                <property role="3oM_SC" value="type" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWomJ" role="1PaTwD">
                <property role="3oM_SC" value="has" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWomT" role="1PaTwD">
                <property role="3oM_SC" value="been" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWon4" role="1PaTwD">
                <property role="3oM_SC" value="computed" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWong" role="1PaTwD">
                <property role="3oM_SC" value="by" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWont" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="3fo57vXWonF" role="1PaTwD">
                <property role="3oM_SC" value="workaround" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3fo57vXTPOK" role="3cqZAp">
            <node concept="2OqwBi" id="3fo57vXTVl7" role="3clFbG">
              <node concept="37vLTw" id="3fo57vXTPOI" role="2Oq$k0">
                <ref role="3cqZAo" node="3fo57vXTPx3" resolve="fields" />
              </node>
              <node concept="2es0OD" id="3fo57vXU0yP" role="2OqNvi">
                <node concept="1bVj0M" id="3fo57vXU0yR" role="23t8la">
                  <node concept="3clFbS" id="3fo57vXU0yS" role="1bW5cS">
                    <node concept="3cpWs8" id="3fo57vXTDxW" role="3cqZAp">
                      <node concept="3cpWsn" id="3fo57vXTDxX" role="3cpWs9">
                        <property role="TrG5h" value="t" />
                        <node concept="3uibUv" id="3fo57vXTDu$" role="1tU5fm">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2OqwBi" id="3fo57vXTDxY" role="33vP2m">
                          <node concept="37vLTw" id="3fo57vXTDxZ" role="2Oq$k0">
                            <ref role="3cqZAo" node="3fo57vXTCR9" resolve="checker" />
                          </node>
                          <node concept="liA8E" id="3fo57vXTDy0" role="2OqNvi">
                            <ref role="37wK5l" to="1ka:~TypecheckingFacade.getTypeOf(org.jetbrains.mps.openapi.model.SNode)" resolve="getTypeOf" />
                            <node concept="37vLTw" id="3fo57vXU19y" role="37wK5m">
                              <ref role="3cqZAo" node="3fo57vXU0yT" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3fo57vXTDDB" role="3cqZAp">
                      <node concept="2OqwBi" id="3fo57vXTDD$" role="3clFbG">
                        <node concept="10M0yZ" id="3fo57vXTDD_" role="2Oq$k0">
                          <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                          <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                        </node>
                        <node concept="liA8E" id="3fo57vXTDDA" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                          <node concept="3cpWs3" id="3fo57vXTEjw" role="37wK5m">
                            <node concept="3cpWs3" id="3fo57vXU1zv" role="3uHU7B">
                              <node concept="3cpWs3" id="3fo57vXU2dJ" role="3uHU7B">
                                <node concept="2OqwBi" id="3fo57vXU2_Y" role="3uHU7w">
                                  <node concept="37vLTw" id="3fo57vXU2dQ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3fo57vXU0yT" resolve="it" />
                                  </node>
                                  <node concept="3TrcHB" id="3fo57vXU3cr" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="3fo57vXU1BV" role="3uHU7B">
                                  <property role="Xl_RC" value="checking rule (direct): type of " />
                                </node>
                              </node>
                              <node concept="Xl_RD" id="3fo57vXTDDO" role="3uHU7w">
                                <property role="Xl_RC" value=" is " />
                              </node>
                            </node>
                            <node concept="37vLTw" id="3fo57vXTEyg" role="3uHU7w">
                              <ref role="3cqZAo" node="3fo57vXTDxX" resolve="t" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="3fo57vXUaXE" role="3cqZAp">
                      <node concept="3clFbS" id="3fo57vXUaXG" role="3clFbx">
                        <node concept="2MkqsV" id="3fo57vXUbVF" role="3cqZAp">
                          <node concept="3cpWs3" id="3fo57vXUfVD" role="2MkJ7o">
                            <node concept="Xl_RD" id="3fo57vXUfVG" role="3uHU7w">
                              <property role="Xl_RC" value="' in checking rule" />
                            </node>
                            <node concept="3cpWs3" id="3fo57vXUe36" role="3uHU7B">
                              <node concept="Xl_RD" id="3fo57vXUcgQ" role="3uHU7B">
                                <property role="Xl_RC" value="Cannot get type in other root '" />
                              </node>
                              <node concept="2OqwBi" id="3fo57vXUe$c" role="3uHU7w">
                                <node concept="37vLTw" id="3fo57vXUe95" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3fo57vXU8zW" resolve="otherRoot" />
                                </node>
                                <node concept="3TrcHB" id="3fo57vXUfvS" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="1YBJjd" id="3fo57vXUdmu" role="1urrMF">
                            <ref role="1YBMHb" node="3fo57vXTqd_" resolve="imd" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbC" id="3fo57vXUbI$" role="3clFbw">
                        <node concept="10Nm6u" id="3fo57vXUbQH" role="3uHU7w" />
                        <node concept="37vLTw" id="3fo57vXUb2V" role="3uHU7B">
                          <ref role="3cqZAo" node="3fo57vXTDxX" resolve="t" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="3fo57vXU0yT" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="3fo57vXU0yU" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="JncvC" id="3fo57vXTLUV" role="JncvA">
          <property role="TrG5h" value="ct" />
          <node concept="2jxLKc" id="3fo57vXTLUW" role="1tU5fm" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3fo57vXTqd_" role="1YuTPh">
      <property role="TrG5h" value="imd" />
      <ref role="1YaFvo" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
    </node>
  </node>
  <node concept="1YbPZF" id="3fo57vXUGPv">
    <property role="TrG5h" value="INFER_OTHER_ROOT" />
    <node concept="3clFbS" id="3fo57vXUGPw" role="18ibNy">
      <node concept="nvevp" id="3fo57vXUGR$" role="3cqZAp">
        <node concept="3clFbS" id="3fo57vXUGRA" role="nvhr_">
          <node concept="Jncv_" id="3fo57vXUH9s" role="3cqZAp">
            <ref role="JncvD" to="tpee:g7uibYu" resolve="ClassifierType" />
            <node concept="2OqwBi" id="3fo57vXUH9t" role="JncvB">
              <node concept="1YBJjd" id="3fo57vXUH9u" role="2Oq$k0">
                <ref role="1YBMHb" node="3fo57vXUGP$" resolve="imd" />
              </node>
              <node concept="3TrEf2" id="3fo57vXUH9v" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzclF7X" resolve="returnType" />
              </node>
            </node>
            <node concept="3clFbS" id="3fo57vXUH9w" role="Jncv$">
              <node concept="3SKdUt" id="3fo57vXUH9x" role="3cqZAp">
                <node concept="1PaTwC" id="3fo57vXUH9y" role="1aUNEU">
                  <node concept="3oM_SD" id="3fo57vXUH9z" role="1PaTwD">
                    <property role="3oM_SC" value="navigate" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUH9$" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUH9_" role="1PaTwD">
                    <property role="3oM_SC" value="another" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUH9A" role="1PaTwD">
                    <property role="3oM_SC" value="root" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="3fo57vXUH9B" role="3cqZAp">
                <node concept="3cpWsn" id="3fo57vXUH9C" role="3cpWs9">
                  <property role="TrG5h" value="otherRoot" />
                  <node concept="3Tqbb2" id="3fo57vXUH9D" role="1tU5fm">
                    <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
                  </node>
                  <node concept="2OqwBi" id="3fo57vXUH9E" role="33vP2m">
                    <node concept="Jnkvi" id="3fo57vXUH9F" role="2Oq$k0">
                      <ref role="1M0zk5" node="3fo57vXUHbr" resolve="ct" />
                    </node>
                    <node concept="3TrEf2" id="3fo57vXUH9G" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:g7uigIF" resolve="classifier" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="3fo57vXUH9H" role="3cqZAp">
                <node concept="3cpWsn" id="3fo57vXUH9I" role="3cpWs9">
                  <property role="TrG5h" value="fields" />
                  <node concept="2I9FWS" id="3fo57vXUH9J" role="1tU5fm">
                    <ref role="2I9WkF" to="tpee:f$Wx3kv" resolve="StaticFieldDeclaration" />
                  </node>
                  <node concept="2OqwBi" id="3fo57vXUH9K" role="33vP2m">
                    <node concept="37vLTw" id="3fo57vXUH9L" role="2Oq$k0">
                      <ref role="3cqZAo" node="3fo57vXUH9C" resolve="otherRoot" />
                    </node>
                    <node concept="2Rf3mk" id="3fo57vXUH9M" role="2OqNvi">
                      <node concept="1xMEDy" id="3fo57vXUH9N" role="1xVPHs">
                        <node concept="chp4Y" id="3fo57vXUH9O" role="ri$Ld">
                          <ref role="cht4Q" to="tpee:f$Wx3kv" resolve="StaticFieldDeclaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="3fo57vXUH9P" role="3cqZAp" />
              <node concept="3SKdUt" id="3fo57vXUH9Q" role="3cqZAp">
                <node concept="1PaTwC" id="3fo57vXUH9R" role="1aUNEU">
                  <node concept="3oM_SD" id="3fo57vXUH9S" role="1PaTwD">
                    <property role="3oM_SC" value="try" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUH9T" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUH9U" role="1PaTwD">
                    <property role="3oM_SC" value="submit" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUH9V" role="1PaTwD">
                    <property role="3oM_SC" value="some" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUH9W" role="1PaTwD">
                    <property role="3oM_SC" value="additional" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUH9X" role="1PaTwD">
                    <property role="3oM_SC" value="dependencies" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUH9Y" role="1PaTwD">
                    <property role="3oM_SC" value="for" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUH9Z" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUHa0" role="1PaTwD">
                    <property role="3oM_SC" value="type" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUHa1" role="1PaTwD">
                    <property role="3oM_SC" value="system" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUHa2" role="1PaTwD">
                    <property role="3oM_SC" value="(won't" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUHa3" role="1PaTwD">
                    <property role="3oM_SC" value="help)" />
                  </node>
                </node>
              </node>
              <node concept="yXGxS" id="3fo57vXUHa4" role="3cqZAp">
                <node concept="37vLTw" id="3fo57vXUHa5" role="yXQkb">
                  <ref role="3cqZAo" node="3fo57vXUH9C" resolve="otherRoot" />
                </node>
              </node>
              <node concept="3clFbF" id="3fo57vXUHa6" role="3cqZAp">
                <node concept="2OqwBi" id="3fo57vXUHa7" role="3clFbG">
                  <node concept="37vLTw" id="3fo57vXUHa8" role="2Oq$k0">
                    <ref role="3cqZAo" node="3fo57vXUH9I" resolve="fields" />
                  </node>
                  <node concept="2es0OD" id="3fo57vXUHa9" role="2OqNvi">
                    <node concept="1bVj0M" id="3fo57vXUHaa" role="23t8la">
                      <node concept="3clFbS" id="3fo57vXUHab" role="1bW5cS">
                        <node concept="yXGxS" id="3fo57vXUHac" role="3cqZAp">
                          <node concept="37vLTw" id="3fo57vXUHad" role="yXQkb">
                            <ref role="3cqZAo" node="3fo57vXUHae" resolve="it" />
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="3fo57vXUHae" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="3fo57vXUHaf" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="3fo57vXUHag" role="3cqZAp" />
              <node concept="3SKdUt" id="3fo57vXUHah" role="3cqZAp">
                <node concept="1PaTwC" id="3fo57vXUHai" role="1aUNEU">
                  <node concept="3oM_SD" id="3fo57vXUHaj" role="1PaTwD">
                    <property role="3oM_SC" value="now" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUHak" role="1PaTwD">
                    <property role="3oM_SC" value="try" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUHal" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUHam" role="1PaTwD">
                    <property role="3oM_SC" value="get" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUHan" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUHao" role="1PaTwD">
                    <property role="3oM_SC" value="types" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUHap" role="1PaTwD">
                    <property role="3oM_SC" value="of" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUHaq" role="1PaTwD">
                    <property role="3oM_SC" value="nodes" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUHar" role="1PaTwD">
                    <property role="3oM_SC" value="in" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUHas" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUHat" role="1PaTwD">
                    <property role="3oM_SC" value="other" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUHau" role="1PaTwD">
                    <property role="3oM_SC" value="root" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="3fo57vXUHav" role="3cqZAp">
                <node concept="1PaTwC" id="3fo57vXUHaw" role="1aUNEU">
                  <node concept="3oM_SD" id="3fo57vXUHax" role="1PaTwD">
                    <property role="3oM_SC" value="(this" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUHay" role="1PaTwD">
                    <property role="3oM_SC" value="works" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUHaz" role="1PaTwD">
                    <property role="3oM_SC" value="in" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUHa$" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUHa_" role="1PaTwD">
                    <property role="3oM_SC" value="editor," />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUHaA" role="1PaTwD">
                    <property role="3oM_SC" value="but" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUHaB" role="1PaTwD">
                    <property role="3oM_SC" value="doesn't" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUHaC" role="1PaTwD">
                    <property role="3oM_SC" value="with" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUHaD" role="1PaTwD">
                    <property role="3oM_SC" value="&quot;Check" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXUHaE" role="1PaTwD">
                    <property role="3oM_SC" value="Model&quot;)" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="3fo57vXUHaF" role="3cqZAp">
                <node concept="3cpWsn" id="3fo57vXUHaG" role="3cpWs9">
                  <property role="TrG5h" value="checker" />
                  <node concept="3uibUv" id="3fo57vXUHaH" role="1tU5fm">
                    <ref role="3uigEE" to="1ka:~TypecheckingFacade" resolve="TypecheckingFacade" />
                  </node>
                  <node concept="2YIFZM" id="3fo57vXUHaI" role="33vP2m">
                    <ref role="1Pybhc" to="1ka:~TypecheckingFacade" resolve="TypecheckingFacade" />
                    <ref role="37wK5l" to="1ka:~TypecheckingFacade.getFromContext()" resolve="getFromContext" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="3fo57vXWl_n" role="3cqZAp" />
              <node concept="3SKdUt" id="3fo57vXWlNZ" role="3cqZAp">
                <node concept="1PaTwC" id="3fo57vXWlO0" role="1aUNEU">
                  <node concept="3oM_SD" id="3fo57vXWmaD" role="1PaTwD">
                    <property role="3oM_SC" value="we" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWmaF" role="1PaTwD">
                    <property role="3oM_SC" value="can" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWmbr" role="1PaTwD">
                    <property role="3oM_SC" value="do" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWmbv" role="1PaTwD">
                    <property role="3oM_SC" value="a" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWmb$" role="1PaTwD">
                    <property role="3oM_SC" value="workaround" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWmbE" role="1PaTwD">
                    <property role="3oM_SC" value="which" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWmbL" role="1PaTwD">
                    <property role="3oM_SC" value="runs" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWmbT" role="1PaTwD">
                    <property role="3oM_SC" value="an" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWmdh" role="1PaTwD">
                    <property role="3oM_SC" value="isolated" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWmdu" role="1PaTwD">
                    <property role="3oM_SC" value="typecheck" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWmc2" role="1PaTwD">
                    <property role="3oM_SC" value="for" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWmcU" role="1PaTwD">
                    <property role="3oM_SC" value="otherRoot," />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWmdG" role="1PaTwD">
                    <property role="3oM_SC" value="but" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWmeZ" role="1PaTwD">
                    <property role="3oM_SC" value="this" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWmff" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWmfw" role="1PaTwD">
                    <property role="3oM_SC" value="not" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWmfM" role="1PaTwD">
                    <property role="3oM_SC" value="scalable" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWmd5" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3fo57vXVVdn" role="3cqZAp">
                <node concept="2YIFZM" id="3fo57vXVVqt" role="3clFbG">
                  <ref role="37wK5l" node="3fo57vXVKZn" resolve="runIsolatedChecker" />
                  <ref role="1Pybhc" node="3fo57vXVKYg" resolve="InefficientWorkaround" />
                  <node concept="37vLTw" id="3fo57vXVVqM" role="37wK5m">
                    <ref role="3cqZAo" node="3fo57vXUH9C" resolve="otherRoot" />
                  </node>
                  <node concept="37vLTw" id="3fo57vXVVtD" role="37wK5m">
                    <ref role="3cqZAo" node="3fo57vXUH9I" resolve="fields" />
                  </node>
                  <node concept="37vLTw" id="3fo57vXVVx6" role="37wK5m">
                    <ref role="3cqZAo" node="3fo57vXUHaG" resolve="checker" />
                  </node>
                  <node concept="Xl_RD" id="3fo57vXW9UP" role="37wK5m">
                    <property role="Xl_RC" value="inference rule (isolated)" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="3fo57vXWoSn" role="3cqZAp" />
              <node concept="3SKdUt" id="3fo57vXWoJj" role="3cqZAp">
                <node concept="1PaTwC" id="3fo57vXWoJk" role="1aUNEU">
                  <node concept="3oM_SD" id="3fo57vXWoJl" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWoJm" role="1PaTwD">
                    <property role="3oM_SC" value="following" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWoJn" role="1PaTwD">
                    <property role="3oM_SC" value="will" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWoJo" role="1PaTwD">
                    <property role="3oM_SC" value="fail" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWoJp" role="1PaTwD">
                    <property role="3oM_SC" value="if" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWoJq" role="1PaTwD">
                    <property role="3oM_SC" value="called" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWoJr" role="1PaTwD">
                    <property role="3oM_SC" value="via" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWoJs" role="1PaTwD">
                    <property role="3oM_SC" value="&quot;Check" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWoJt" role="1PaTwD">
                    <property role="3oM_SC" value="Model&quot;" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="3fo57vXWoJu" role="3cqZAp">
                <node concept="1PaTwC" id="3fo57vXWoJv" role="1aUNEU">
                  <node concept="3oM_SD" id="3fo57vXWoJw" role="1PaTwD">
                    <property role="3oM_SC" value="note" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWoJx" role="1PaTwD">
                    <property role="3oM_SC" value="that" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWoJy" role="1PaTwD">
                    <property role="3oM_SC" value="it" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWoJz" role="1PaTwD">
                    <property role="3oM_SC" value="will" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWoJ$" role="1PaTwD">
                    <property role="3oM_SC" value="despite" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWoJ_" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWoJA" role="1PaTwD">
                    <property role="3oM_SC" value="correct" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWoJB" role="1PaTwD">
                    <property role="3oM_SC" value="type" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWoJC" role="1PaTwD">
                    <property role="3oM_SC" value="has" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWoJD" role="1PaTwD">
                    <property role="3oM_SC" value="been" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWoJE" role="1PaTwD">
                    <property role="3oM_SC" value="computed" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWoJF" role="1PaTwD">
                    <property role="3oM_SC" value="by" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWoJG" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="3fo57vXWoJH" role="1PaTwD">
                    <property role="3oM_SC" value="workaround" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3fo57vXUHaJ" role="3cqZAp">
                <node concept="2OqwBi" id="3fo57vXUHaK" role="3clFbG">
                  <node concept="37vLTw" id="3fo57vXUHaL" role="2Oq$k0">
                    <ref role="3cqZAo" node="3fo57vXUH9I" resolve="fields" />
                  </node>
                  <node concept="2es0OD" id="3fo57vXUHaM" role="2OqNvi">
                    <node concept="1bVj0M" id="3fo57vXUHaN" role="23t8la">
                      <node concept="3clFbS" id="3fo57vXUHaO" role="1bW5cS">
                        <node concept="3cpWs8" id="3fo57vXUHaP" role="3cqZAp">
                          <node concept="3cpWsn" id="3fo57vXUHaQ" role="3cpWs9">
                            <property role="TrG5h" value="t" />
                            <node concept="3uibUv" id="3fo57vXUHaR" role="1tU5fm">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                            <node concept="2OqwBi" id="3fo57vXUHaS" role="33vP2m">
                              <node concept="37vLTw" id="3fo57vXUHaT" role="2Oq$k0">
                                <ref role="3cqZAo" node="3fo57vXUHaG" resolve="checker" />
                              </node>
                              <node concept="liA8E" id="3fo57vXUHaU" role="2OqNvi">
                                <ref role="37wK5l" to="1ka:~TypecheckingFacade.getTypeOf(org.jetbrains.mps.openapi.model.SNode)" resolve="getTypeOf" />
                                <node concept="37vLTw" id="3fo57vXUHaV" role="37wK5m">
                                  <ref role="3cqZAo" node="3fo57vXUHbp" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="3fo57vXUHaW" role="3cqZAp">
                          <node concept="2OqwBi" id="3fo57vXUHaX" role="3clFbG">
                            <node concept="10M0yZ" id="3fo57vXUHaY" role="2Oq$k0">
                              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                              <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                            </node>
                            <node concept="liA8E" id="3fo57vXUHaZ" role="2OqNvi">
                              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                              <node concept="3cpWs3" id="3fo57vXUHb1" role="37wK5m">
                                <node concept="3cpWs3" id="3fo57vXUHb2" role="3uHU7B">
                                  <node concept="3cpWs3" id="3fo57vXUHb3" role="3uHU7B">
                                    <node concept="2OqwBi" id="3fo57vXUHb4" role="3uHU7w">
                                      <node concept="37vLTw" id="3fo57vXUHb5" role="2Oq$k0">
                                        <ref role="3cqZAo" node="3fo57vXUHbp" resolve="it" />
                                      </node>
                                      <node concept="3TrcHB" id="3fo57vXUHb6" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                      </node>
                                    </node>
                                    <node concept="Xl_RD" id="3fo57vXUHb7" role="3uHU7B">
                                      <property role="Xl_RC" value="inference rule (direct): type of " />
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="3fo57vXUHb8" role="3uHU7w">
                                    <property role="Xl_RC" value=" is " />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="3fo57vXUHb9" role="3uHU7w">
                                  <ref role="3cqZAo" node="3fo57vXUHaQ" resolve="t" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="3fo57vXUHbb" role="3cqZAp">
                          <node concept="3clFbS" id="3fo57vXUHbc" role="3clFbx">
                            <node concept="2MkqsV" id="3fo57vXUHbd" role="3cqZAp">
                              <node concept="3cpWs3" id="3fo57vXUHbe" role="2MkJ7o">
                                <node concept="Xl_RD" id="3fo57vXUHbf" role="3uHU7w">
                                  <property role="Xl_RC" value="' in inference rule" />
                                </node>
                                <node concept="3cpWs3" id="3fo57vXUHbg" role="3uHU7B">
                                  <node concept="Xl_RD" id="3fo57vXUHbh" role="3uHU7B">
                                    <property role="Xl_RC" value="Cannot get type in other root '" />
                                  </node>
                                  <node concept="2OqwBi" id="3fo57vXUHbi" role="3uHU7w">
                                    <node concept="37vLTw" id="3fo57vXUHbj" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3fo57vXUH9C" resolve="otherRoot" />
                                    </node>
                                    <node concept="3TrcHB" id="3fo57vXUHbk" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="1YBJjd" id="3fo57vXUHbl" role="1urrMF">
                                <ref role="1YBMHb" node="3fo57vXUGP$" resolve="imd" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbC" id="3fo57vXUHbm" role="3clFbw">
                            <node concept="10Nm6u" id="3fo57vXUHbn" role="3uHU7w" />
                            <node concept="37vLTw" id="3fo57vXUHbo" role="3uHU7B">
                              <ref role="3cqZAo" node="3fo57vXUHaQ" resolve="t" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="3fo57vXUHbp" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="3fo57vXUHbq" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="3fo57vXUHbr" role="JncvA">
              <property role="TrG5h" value="ct" />
              <node concept="2jxLKc" id="3fo57vXUHbs" role="1tU5fm" />
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="3fo57vXUGYs" role="nvjzm">
          <node concept="1YBJjd" id="3fo57vXUGSq" role="2Oq$k0">
            <ref role="1YBMHb" node="3fo57vXUGP$" resolve="imd" />
          </node>
          <node concept="3TrEf2" id="3fo57vXUH2W" role="2OqNvi">
            <ref role="3Tt5mk" to="tpee:fzclF7X" resolve="returnType" />
          </node>
        </node>
        <node concept="2X1qdy" id="3fo57vXUGRE" role="2X0Ygz">
          <property role="TrG5h" value="rt" />
          <node concept="2jxLKc" id="3fo57vXUGRF" role="1tU5fm" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3fo57vXUGP$" role="1YuTPh">
      <property role="TrG5h" value="imd" />
      <ref role="1YaFvo" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
    </node>
  </node>
  <node concept="312cEu" id="3fo57vXVKYg">
    <property role="TrG5h" value="InefficientWorkaround" />
    <node concept="3Tm1VV" id="3fo57vXVKYh" role="1B3o_S" />
    <node concept="2YIFZL" id="3fo57vXVKZn" role="jymVt">
      <property role="TrG5h" value="runIsolatedChecker" />
      <node concept="3clFbS" id="3fo57vXVKZq" role="3clF47">
        <node concept="3SKdUt" id="3fo57vXW6s5" role="3cqZAp">
          <node concept="1PaTwC" id="3fo57vXW6s6" role="1aUNEU">
            <node concept="3oM_SD" id="3fo57vXW6QJ" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW6QS" role="1PaTwD">
              <property role="3oM_SC" value="calls" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW6R4" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW6R8" role="1PaTwD">
              <property role="3oM_SC" value="isolated" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW6Rd" role="1PaTwD">
              <property role="3oM_SC" value="typechecking" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW6Rj" role="1PaTwD">
              <property role="3oM_SC" value="session" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW6Rq" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW6Ry" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW6RF" role="1PaTwD">
              <property role="3oM_SC" value="given" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW6RP" role="1PaTwD">
              <property role="3oM_SC" value="root" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3fo57vXW7ja" role="3cqZAp">
          <node concept="1PaTwC" id="3fo57vXW7jb" role="1aUNEU">
            <node concept="3oM_SD" id="3fo57vXW7qZ" role="1PaTwD">
              <property role="3oM_SC" value="seems" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW7r1" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW7r4" role="1PaTwD">
              <property role="3oM_SC" value="work" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW7rj" role="1PaTwD">
              <property role="3oM_SC" value="also" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW7ro" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW7ru" role="1PaTwD">
              <property role="3oM_SC" value="&quot;Check" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW7r_" role="1PaTwD">
              <property role="3oM_SC" value="Model&quot;" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW7s0" role="1PaTwD">
              <property role="3oM_SC" value="case," />
            </node>
            <node concept="3oM_SD" id="3fo57vXW7s9" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW7sj" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW7su" role="1PaTwD">
              <property role="3oM_SC" value="probably" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW7sE" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW7sR" role="1PaTwD">
              <property role="3oM_SC" value="scalable" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW7t5" role="1PaTwD">
              <property role="3oM_SC" value="(because" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW7tk" role="1PaTwD">
              <property role="3oM_SC" value="checking" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW7t$" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW7tP" role="1PaTwD">
              <property role="3oM_SC" value="repeated" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW81f" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW81y" role="1PaTwD">
              <property role="3oM_SC" value="each" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW81Q" role="1PaTwD">
              <property role="3oM_SC" value="call," />
            </node>
            <node concept="3oM_SD" id="3fo57vXW82z" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW839" role="1PaTwD">
              <property role="3oM_SC" value="know" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW83C" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW848" role="1PaTwD">
              <property role="3oM_SC" value="caching" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW84D" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW86y" role="1PaTwD">
              <property role="3oM_SC" value="applied" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW87d" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="3fo57vXW87L" role="1PaTwD">
              <property role="3oM_SC" value="typesystem)" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3fo57vXVHOG" role="3cqZAp">
          <node concept="3cpWsn" id="3fo57vXVHOH" role="3cpWs9">
            <property role="TrG5h" value="check2" />
            <node concept="1bVj0M" id="3fo57vXVHOI" role="33vP2m">
              <node concept="3clFbS" id="3fo57vXVHOJ" role="1bW5cS">
                <node concept="3cpWs8" id="3fo57vXVHOK" role="3cqZAp">
                  <node concept="3cpWsn" id="3fo57vXVHOL" role="3cpWs9">
                    <property role="TrG5h" value="typecheckingQueries" />
                    <node concept="3uibUv" id="3fo57vXVHOM" role="1tU5fm">
                      <ref role="3uigEE" to="1ka:~TypecheckingQueries" resolve="TypecheckingQueries" />
                    </node>
                    <node concept="2OqwBi" id="3fo57vXVHON" role="33vP2m">
                      <node concept="37vLTw" id="3fo57vXVHOO" role="2Oq$k0">
                        <ref role="3cqZAo" node="3fo57vXVHPL" resolve="session" />
                      </node>
                      <node concept="liA8E" id="3fo57vXVHOP" role="2OqNvi">
                        <ref role="37wK5l" to="1ka:~TypecheckingSession.getQueries(org.jetbrains.mps.openapi.model.SNode)" resolve="getQueries" />
                        <node concept="37vLTw" id="3fo57vXVNj2" role="37wK5m">
                          <ref role="3cqZAo" node="3fo57vXVN4o" resolve="root" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3fo57vXVHOR" role="3cqZAp">
                  <node concept="2OqwBi" id="3fo57vXVHOS" role="3clFbG">
                    <node concept="37vLTw" id="3fo57vXVHOT" role="2Oq$k0">
                      <ref role="3cqZAo" node="3fo57vXVHOL" resolve="typecheckingQueries" />
                    </node>
                    <node concept="liA8E" id="3fo57vXVHOU" role="2OqNvi">
                      <ref role="37wK5l" to="1ka:~TypecheckingQueries.checkRecursively(org.jetbrains.mps.openapi.model.SNode,java.util.function.Consumer)" resolve="checkRecursively" />
                      <node concept="37vLTw" id="3fo57vXVNzh" role="37wK5m">
                        <ref role="3cqZAo" node="3fo57vXVN4o" resolve="root" />
                      </node>
                      <node concept="1bVj0M" id="3fo57vXVHOW" role="37wK5m">
                        <node concept="37vLTG" id="3fo57vXVHOX" role="1bW2Oz">
                          <property role="TrG5h" value="nodeReportItem" />
                          <node concept="3uibUv" id="3fo57vXVHOY" role="1tU5fm">
                            <ref role="3uigEE" to="d6hs:~NodeReportItem" resolve="NodeReportItem" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="3fo57vXVHOZ" role="1bW5cS">
                          <node concept="2lOVwT" id="3fo57vXVHP0" role="3cqZAp">
                            <node concept="1PaTwC" id="3fo57vXVHP1" role="2lOMFJ">
                              <node concept="3oM_SD" id="3fo57vXVHP2" role="1PaTwD">
                                <property role="3oM_SC" value="NOP" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3fo57vXVHP3" role="3cqZAp" />
                <node concept="3clFbF" id="3fo57vXVHP4" role="3cqZAp">
                  <node concept="2OqwBi" id="3fo57vXVHP5" role="3clFbG">
                    <node concept="37vLTw" id="3fo57vXVOHs" role="2Oq$k0">
                      <ref role="3cqZAo" node="3fo57vXVOrS" resolve="toBeTested" />
                    </node>
                    <node concept="2es0OD" id="3fo57vXVHP7" role="2OqNvi">
                      <node concept="1bVj0M" id="3fo57vXVHP8" role="23t8la">
                        <node concept="3clFbS" id="3fo57vXVHP9" role="1bW5cS">
                          <node concept="3cpWs8" id="3fo57vXVHPa" role="3cqZAp">
                            <node concept="3cpWsn" id="3fo57vXVHPb" role="3cpWs9">
                              <property role="TrG5h" value="t" />
                              <node concept="3uibUv" id="3fo57vXVHPc" role="1tU5fm">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                              <node concept="2OqwBi" id="3fo57vXVHPd" role="33vP2m">
                                <node concept="37vLTw" id="3fo57vXVHPe" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3fo57vXVPmo" resolve="checker" />
                                </node>
                                <node concept="liA8E" id="3fo57vXVHPf" role="2OqNvi">
                                  <ref role="37wK5l" to="1ka:~TypecheckingFacade.getTypeOf(org.jetbrains.mps.openapi.model.SNode)" resolve="getTypeOf" />
                                  <node concept="37vLTw" id="3fo57vXVHPg" role="37wK5m">
                                    <ref role="3cqZAo" node="3fo57vXVHPG" resolve="it" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="3fo57vXVHPh" role="3cqZAp">
                            <node concept="2OqwBi" id="3fo57vXVHPi" role="3clFbG">
                              <node concept="10M0yZ" id="3fo57vXVHPj" role="2Oq$k0">
                                <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                                <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                              </node>
                              <node concept="liA8E" id="3fo57vXVHPk" role="2OqNvi">
                                <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                                <node concept="3cpWs3" id="3fo57vXVHPl" role="37wK5m">
                                  <node concept="3cpWs3" id="3fo57vXVHPm" role="3uHU7B">
                                    <node concept="3cpWs3" id="3fo57vXVHPn" role="3uHU7B">
                                      <node concept="37vLTw" id="3fo57vXVHPp" role="3uHU7w">
                                        <ref role="3cqZAo" node="3fo57vXVHPG" resolve="it" />
                                      </node>
                                      <node concept="3cpWs3" id="3fo57vXW8PD" role="3uHU7B">
                                        <node concept="37vLTw" id="3fo57vXW94d" role="3uHU7B">
                                          <ref role="3cqZAo" node="3fo57vXW8qo" resolve="tag" />
                                        </node>
                                        <node concept="Xl_RD" id="3fo57vXVHPr" role="3uHU7w">
                                          <property role="Xl_RC" value=": type of " />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="Xl_RD" id="3fo57vXVHPs" role="3uHU7w">
                                      <property role="Xl_RC" value=" is " />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="3fo57vXVHPt" role="3uHU7w">
                                    <ref role="3cqZAo" node="3fo57vXVHPb" resolve="t" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="3fo57vXVHPG" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="3fo57vXVHPH" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3fo57vXVHPI" role="3cqZAp" />
                <node concept="3cpWs8" id="3fo57vXVJvx" role="3cqZAp">
                  <node concept="3cpWsn" id="3fo57vXVJvy" role="3cpWs9">
                    <property role="TrG5h" value="emptySet" />
                    <node concept="2YIFZM" id="3fo57vXVJvz" role="33vP2m">
                      <ref role="37wK5l" to="33ny:~Collections.emptySet()" resolve="emptySet" />
                      <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                    </node>
                    <node concept="2hMVRd" id="mDYNhtw$3$" role="1tU5fm">
                      <node concept="3uibUv" id="mDYNhtw$3_" role="2hN53Y">
                        <ref role="3uigEE" to="d6hs:~NodeReportItem" resolve="NodeReportItem" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="3fo57vXVHPJ" role="3cqZAp">
                  <node concept="37vLTw" id="3fo57vXVJv$" role="3cqZAk">
                    <ref role="3cqZAo" node="3fo57vXVJvy" resolve="emptySet" />
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="3fo57vXVHPL" role="1bW2Oz">
                <property role="TrG5h" value="session" />
                <node concept="3uibUv" id="3fo57vXVHPM" role="1tU5fm">
                  <ref role="3uigEE" to="1ka:~TypecheckingSession" resolve="TypecheckingSession" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="3fo57vXVUvQ" role="1tU5fm">
              <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
              <node concept="3uibUv" id="3fo57vXVUvR" role="11_B2D">
                <ref role="3uigEE" to="1ka:~TypecheckingSession" resolve="TypecheckingSession" />
              </node>
              <node concept="2hMVRd" id="3fo57vXVUvS" role="11_B2D">
                <node concept="3uibUv" id="3fo57vXVUvT" role="2hN53Y">
                  <ref role="3uigEE" to="d6hs:~NodeReportItem" resolve="NodeReportItem" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3fo57vXVdgg" role="3cqZAp">
          <node concept="2OqwBi" id="3fo57vXVdCE" role="3clFbG">
            <node concept="37vLTw" id="3fo57vXVdge" role="2Oq$k0">
              <ref role="3cqZAo" node="3fo57vXVPmo" resolve="checker" />
            </node>
            <node concept="liA8E" id="3fo57vXVe5e" role="2OqNvi">
              <ref role="37wK5l" to="ev0w:~TypecheckingSessionHandler.computeIsolated(jetbrains.mps.typechecking.TypecheckingSession$Flags,java.util.function.Function)" resolve="computeIsolated" />
              <node concept="2OqwBi" id="obyZJhYdVA" role="37wK5m">
                <node concept="2YIFZM" id="obyZJhYdVB" role="2Oq$k0">
                  <ref role="1Pybhc" to="1ka:~TypecheckingSession$Flags" resolve="TypecheckingSession.Flags" />
                  <ref role="37wK5l" to="1ka:~TypecheckingSession$Flags.forRoot(org.jetbrains.mps.openapi.model.SNode)" resolve="forRoot" />
                  <node concept="37vLTw" id="3fo57vXVSqp" role="37wK5m">
                    <ref role="3cqZAo" node="3fo57vXVN4o" resolve="root" />
                  </node>
                </node>
                <node concept="liA8E" id="obyZJhYdVD" role="2OqNvi">
                  <ref role="37wK5l" to="1ka:~TypecheckingSession$Flags.incremental()" resolve="incremental" />
                </node>
              </node>
              <node concept="37vLTw" id="3fo57vXVHPN" role="37wK5m">
                <ref role="3cqZAo" node="3fo57vXVHOH" resolve="check2" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3fo57vXVKYO" role="1B3o_S" />
      <node concept="3cqZAl" id="3fo57vXVKZ3" role="3clF45" />
      <node concept="37vLTG" id="3fo57vXVN4o" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="3fo57vXVN4n" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3fo57vXVOrS" role="3clF46">
        <property role="TrG5h" value="toBeTested" />
        <node concept="A3Dl8" id="3fo57vXVODX" role="1tU5fm">
          <node concept="3Tqbb2" id="3fo57vXVOEM" role="A3Ik2" />
        </node>
      </node>
      <node concept="37vLTG" id="3fo57vXVPmo" role="3clF46">
        <property role="TrG5h" value="checker" />
        <node concept="3uibUv" id="3fo57vXVPB6" role="1tU5fm">
          <ref role="3uigEE" to="1ka:~TypecheckingFacade" resolve="TypecheckingFacade" />
        </node>
      </node>
      <node concept="37vLTG" id="3fo57vXW8qo" role="3clF46">
        <property role="TrG5h" value="tag" />
        <node concept="17QB3L" id="3fo57vXW8O0" role="1tU5fm" />
      </node>
    </node>
  </node>
</model>

