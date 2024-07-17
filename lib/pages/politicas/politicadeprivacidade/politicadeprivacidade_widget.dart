import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'politicadeprivacidade_model.dart';
export 'politicadeprivacidade_model.dart';

class PoliticadeprivacidadeWidget extends StatefulWidget {
  const PoliticadeprivacidadeWidget({super.key});

  @override
  State<PoliticadeprivacidadeWidget> createState() =>
      _PoliticadeprivacidadeWidgetState();
}

class _PoliticadeprivacidadeWidgetState
    extends State<PoliticadeprivacidadeWidget> {
  late PoliticadeprivacidadeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PoliticadeprivacidadeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.safePop();
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 0.0, 0.0),
                          child: Icon(
                            Icons.arrow_back,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'voltar',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 16.0),
                  child: Text(
                    'Política de privacidade para Notas de Falecimento',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Inter',
                          color: Colors.black,
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                  child: Text(
                    'Todas as suas informações pessoais recolhidas, serão usadas para o ajudar a tornar a sua visita no nosso aplicativo/site o mais produtiva e agradável possível.\n\nA garantia da confidencialidade dos dados pessoais dos utilizadores do nosso aplicativo/site é importante para a Notas de Falecimento.\n\nTodas as informações pessoais relativas a membros, assinantes, clientes ou visitantes que usem a Notas de Falecimento serão tratadas em concordância com a Lei Geral de Proteção de Dados nº 13709/1, ou, a “LGPD”.\n\n',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 16.0),
                  child: Text(
                    'Dados Pessoais Tratados',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Inter',
                          color: Colors.black,
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                  child: Text(
                    'Nós, da Notas de Falecimento, informamos que promovemos o tratamento de dados pessoais limitados àqueles necessários para cadastramento de seu interesse em se relacionar conosco. Estes dados se limitam somente ao seu endereço de e-mail.\n\nAlém dos dados de cadastro para relacionamento, nós, da Notas de Falecimento promovemos a coleta de dados pessoais indiretos relacionados ao acesso ao portal na Internet, levantados pelo próprio sistema sem a necessária informação pelos usuários, tais como geolocalização e endereço de IP. Esses dados não serão relacionados a seus dados pessoais diretos, disponibilizados nos campos de cadastro.\n\n',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 16.0),
                  child: Text(
                    'Finalidade do Tratamento',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Inter',
                          color: Colors.black,
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                  child: Text(
                    'O tratamento de dados coletados pelo app Notas de Falecimento se dará em conformidade com a legislação brasileira e europeia de proteção de dados e no estrito propósito de atendimento às seguintes finalidades:\n\n(a) envio de conteúdo solicitado pelo usuário que livremente se cadastra no portal;\n\n(b) divulgação de produtos e serviços oferecidos pela Notas de Falecimento;\n\n(c) divulgação de novas funcionalidades, atualizações, novos conteúdos, alterações de políticas e outros pontos relacionados à operação do portal;\n\n(d) estudar a interação dos usuários com o conteúdo do Portal no propósito de desenvolver conteúdo considerado de interesse de maior parte dos usuários;\n\n(e) estabelecer critérios de identificação do usuário cadastrado e suas atividades na plataforma, sistema e website;\n\n(f) evitar a ocorrência de fraudes contra o usuário e terceiros.\n\n',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 16.0),
                  child: Text(
                    'Tratamento de Dados',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Inter',
                          color: Colors.black,
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                  child: Text(
                    'Os dados coletados pelo app Notas de Falecimento serão armazenados em ambiente tecnológico e gerencial seguros, mediante aplicação de critérios técnicos e organizacionais de segurança da informação.\n\nO armazenamento dos dados de acesso ao conteúdo se dará pelo período mínimo de 6 (seis) meses, em conformidade com as exigências do Marco Civil da Internet (MCI) brasileiro. Além disso, os dados poderão ser mantidos enquanto o usuário não manifestar oposição ao tratamento.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 16.0),
                  child: Text(
                    'Excluir e deletar seus dados pessoais',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Inter',
                          color: Colors.black,
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                  child: Text(
                    'Para solicitar informações de quais dados temos armazenados, ou para solicitar que seus dados sejam excluídos e deletados, entre em contato conosco pelo email suportenotasdefalecimento@gmail.com.\n',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 16.0),
                  child: Text(
                    'Segurança de Dados',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Inter',
                          color: Colors.black,
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                  child: Text(
                    'O acesso aos dados pessoais coletados será controlado por regras de permissão de acesso, no propósito de limitar o acesso de cada dado pessoal ao profissional que efetivamente utilize para execução de algumas das finalidades declaradas do processamento de dados.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 16.0),
                  child: Text(
                    'Compartilhamento de Dados',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Inter',
                          color: Colors.black,
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                  child: Text(
                    'Os dados de natureza pessoal do Usuário somente somente poderão ser compartilhados com terceiros, nas hipóteses de:\n\n(a) uma ou mais das apoiadoras ser sucedida em operação de fusão, aquisição ou incorporação;\n\n(b) na hipótese de contratação de serviços de processamento de dados junto a terceiros (operadores), tais como hospedagem de dados, sistemas de processamento (serviços de computação em nuvem), consultoria em tecnologia da informação, serviços de telecomunicação, serviços de entrega (para eventuais brindes, sorteios ou promoções), serviços de publicidade e marketing, organização de eventos, ou outras ações que envolvam a oferta de benefícios ou conteúdo de interesse do titular do dado pessoal.\n\nO acesso destes terceiros a dados dos usuários se dará mediante compromisso de confidencialidade e conformidade com as leis de proteção de dados vigentes.\n\nRegistramos que, na hipótese de solicitação emanada de autoridade judicial ou policial, nós, da Notas de Falecimento, seremos obrigados a compartilhar dados pessoais dos usuários. Cuidaremos de nos certificar de que a ordem seja validada antes de qualquer compartilhamento.\n\n',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 16.0),
                  child: Text(
                    'Transferência Internacional de Dados',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Inter',
                          color: Colors.black,
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                  child: Text(
                    'Alguns dos processadores diretos e indiretos poderão estar fora do território brasileiro. Cuidamos para que estes terceiros estejam comprometidos com cumprimento das exigências legais decorrentes das normas de proteção de dados pessoais. Registramos que o compartilhamento para esses operadores é feito com aplicação de ferramentas de anonimização que não permitem a identificação de pessoas naturais com o eventual acesso ao dado.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 16.0),
                  child: Text(
                    'Do Uso de Cookies',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Inter',
                          color: Colors.black,
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                  child: Text(
                    'Empregamos cookies no app Notas de Falecimento. Cookies são arquivos enviados online e instalados no navegador de sua máquina e que permitem a identificação do terminal de Internet, autenticação do usuário, personalização da experiência de navegação, e registro de acessos e atividades na página.\n\nNosso uso de cookies é voltado à:\n\n(a) autenticação e segurança\n\n(b) exibição de anúncios e conteúdo que entendemos ser do interesse do titular\n\n(c) oferta de produtos e serviços\n\n(d) medição de desempenho e estatísticas\n\nAsseguramos que tanto na execução de cookies próprios quanto de terceiros, as melhores práticas de segurança são adotadas para garantir a proteção dos dados pessoais levantados.\n\nAs autorizações podem ser revisadas e modificadas a qualquer tempo pelo usuário.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 16.0),
                  child: Text(
                    'Dos Direitos do Titular',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Inter',
                          color: Colors.black,
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                  child: Text(
                    'Asseguramos ao usuário o direito de acesso aos dados pessoais em uso. Além do acesso, é garantido ao usuário:\n\n(a) o direito à retificação de seus dados;\n\n(b) o direito à portabilidade dos dados, se aplicável;\n\n(c) o direito à oposição do uso dos dados para finalidade previamente autorizada;\n\n(d) o direito à exclusão dos dados, ressalvada a manutenção dos dados necessários ao cumprimento de dever legal e ao exercício do direito de defesa em processo judicial e/ou administrativo;\n\nAsseguramos que, manifestada a oposição de tratamento ou revogado o consentimento para tratamento dos dados, as informações de natureza pessoal, coletadas e armazenadas, serão eliminadas, ressalva feita à manutenção dos registros necessários ao cumprimento de dever legal ou para eventual defesa em processo judicial ou administrativo.\n\n',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 16.0),
                  child: Text(
                    'Ligações a Sites de terceiros',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Inter',
                          color: Colors.black,
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                  child: Text(
                    'O Notas de Falecimento possui ligações para outros sites, os quais, a nosso ver, podem conter informações / ferramentas úteis para os nossos visitantes. A nossa política de privacidade não é aplicada a sites de terceiros, pelo que, caso visite outro site a partir do nosso deverá ler a politica de privacidade do mesmo.\n\nNão nos responsabilizamos pela política de privacidade ou conteúdo presente nesses mesmos sites.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 16.0),
                  child: Text(
                    'Isenção de Responsabilidade',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Inter',
                          color: Colors.black,
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                  child: Text(
                    'Estamos comprometidos com sua privacidade, mas não nos responsabilizamos por sua eventual falta de cuidado com seus próprios dados pessoais. Podemos garantir os esforços no emprego das melhores práticas de segurança. Porém, cabe a você, também, zelar pela confidencialidade de informações relacionadas ao cadastramento de informações no portal. Não forneça qualquer dado pessoal que não tenha sido solicitado. Estruturamos a solicitação de informações dos usuários para contemplar o mínimo de dados possível, reduzindo eventual impacto num incidente de segurança.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 16.0),
                  child: Text(
                    'Atualizações em nossa Política de Privacidade',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Inter',
                          color: Colors.black,
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                  child: Text(
                    'Esta Política de Privacidade pode ser atualizada e modificada periodicamente e sem aviso prévio. Indicamos, ao término deste documento, a data da última atualização.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 16.0),
                  child: Text(
                    'Contatos, Dúvidas e Solicitações',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Inter',
                          color: Colors.black,
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                  child: Text(
                    'Para solicitação de esclarecimentos, dúvidas e solicitações de qualquer natureza relacionadas ao tratamento de dados pessoais e aos termos da presente política de privacidade, nos colocamos à disposição para contato pelo endereço eletrônico suportenotasdefalecimento@gmail.com.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                  child: Text(
                    'Campo Belo/MG, setembro de 2023',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
