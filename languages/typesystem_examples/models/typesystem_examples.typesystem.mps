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
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="5497648299878491908" name="jetbrains.mps.baseLanguage.structure.BaseVariableReference" flags="nn" index="1M0zk4">
        <reference id="5497648299878491909" name="baseVariableDeclaration" index="1M0zk5" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1220357310820" name="jetbrains.mps.lang.typesystem.structure.AddDependencyStatement" flags="nn" index="yXGxS">
        <child id="1220357350423" name="dependency" index="yXQkb" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
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
                            <node concept="37vLTw" id="3fo57vXTEyg" role="3uHU7w">
                              <ref role="3cqZAo" node="3fo57vXTDxX" resolve="t" />
                            </node>
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
                                  <property role="Xl_RC" value="type of " />
                                </node>
                              </node>
                              <node concept="Xl_RD" id="3fo57vXTDDO" role="3uHU7w">
                                <property role="Xl_RC" value=" is " />
                              </node>
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
                              <property role="Xl_RC" value="'" />
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
</model>

