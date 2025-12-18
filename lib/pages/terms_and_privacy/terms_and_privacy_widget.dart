import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'terms_and_privacy_model.dart';
export 'terms_and_privacy_model.dart';

class TermsAndPrivacyWidget extends StatefulWidget {
  const TermsAndPrivacyWidget({super.key});

  static String routeName = 'TermsAndPrivacy';
  static String routePath = '/termsAndPrivacy';

  @override
  State<TermsAndPrivacyWidget> createState() => _TermsAndPrivacyWidgetState();
}

class _TermsAndPrivacyWidgetState extends State<TermsAndPrivacyWidget> {
  late TermsAndPrivacyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsAndPrivacyModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'TermsAndPrivacy'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFE4EDDB),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 24.0, 0.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'TERMS_AND_PRIVACY_arrow_back_ICN_ON_TAP');
                              logFirebaseEvent('IconButton_navigate_back');
                              context.safePop();
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 14.0, 12.0, 12.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFF7F9F5),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(14.0),
                            child: Text(
                              'Privacy Policy :- \n\nProChange respects and protects your privacy. This privacy policy describes\nthe policies that apply to this website and to users of the ProChange Behavior\nSolutions\' (ProChange) Nurtured program. The policy applies to Personal\nInformation in any format (electronic, paper, or recorded). Other privacy\npolicies may also apply to information you provide to ProChange, as\ndescribed below.\n\nInformation We Collect About You:-\n\nWhen you use Nurtured, we ask you for information about you (such as name\nand contact information). This is your \"Personal Information.\" ProChange will\nnever sell your Personal Information or use it for any illegal purpose. We do\nnot disclose your Personal Information to third parties or allow third parties to\naccess Personal Information, except as described in this section.\n\n● Disclosures to You. We may use your Personal Information to contact\nyou about Nurtured; how to reach your goals; or\n\n● To encourage you to take part in program activities.\n\nWe will use the e-mail address you give us to contact you. If you give us a\nphone number or other contact information, we may contact you using that\ninformation and we may query a service to confirm the owner of the number,\ntype of service and provider name to aid in troubleshooting and in fraud\ndetection. For example, we look to see if the number is associated with a\ncellular provider to confirm that text messages can be received.\n\nTrusted Vendors. We may utilize other companies to perform functions for us,\nsuch as website hosting, email and text messaging. We only provide the\nminimal amount of information to perform a function (such as your phone\nnumber to send a text message) and require those partners to protect and\nlimit access to your Personal Information.\nRequired by Law. We will disclose Personal Information if required by law,\nsuch as in response to a court order.\n\nE-mail Addresses and Other Contact Information :-\nProChange will not sell or share your e-mail address or other contact\ninformation. We use your e-mail address and other contact information only\nfor the purposes described above under \"Disclosures to You.\"\n\nChildren :-\n\nProChange does not intend for children to use the Nurtured Program. If your\nchild gives us Personal Information, please contact us to delete that\ninformation. You may use the information listed below to contact us.\n\nCookies :-\n\nCookies are small pieces of information your browser stores on your\ncomputer\'s hard drive. If you use Nurtured outside of the mobile application,\nit will use cookies to track your use of the program. This allows you to resume\na session if you stop and then come back to finish later. It allows our website\nto recognize you when you come back to the site for a new session. Cookies\nalso allow ProChange to better tailor your experience with Nurtured. To use\nNurtured, you will need to \"enable cookies\" if they are turned off on your\ncomputer.\n\nSecurity :-\nWe use a number of security methods to protect your Personal Information.\nOf course, due to the nature of the Internet and online communications, we\ncannot guarantee that all information we collect will be totally safe. We are\nnot liable for the illegal acts of third parties, such as criminal hackers.\n\nLinks to Other Sites :-\nNurtured may include external links to other websites. ProChange is not\nresponsible for the content of those sites. This Privacy Policy applies only to\nthe use of Nurtured. While the external links we provide are links to websites\nwe consider to be trustworthy and honest, ProChange does not have control\nover the privacy practices of those sites. We advise you to review the Privacy\nPolicy of each website you visit.\n\nThe external links we provide in Nurtured allow us to track when people click\non them. We use that information to see how helpful the links are and to\nfurther tailor Nurtured content.\n\nExercising Your Data Rights :-\n\nYou may have rights under privacy laws to submit requests to us to access,\ncorrect, update, stop using for certain purposes, delete, or move your personal\ndata out of Nurtured. If you would like to submit a request to exercise your rights,\nplease reach out via the email address below in the contact us section to request\nthe data changes. ProChange will execute on the request within 60 days of\nreceipt.\n\nNotice of Changes :-\n\nThis privacy policy is updated from time to time. This is the most up-to-date\nversion. Providing you agree to abide by the latest version of this license and\nprivacy policy as posted here, they will be considered to automatically renew\non the first day of the year (January 1) in perpetuity until terminated by you, or\nProChange Behavior Solutions in accordance with the Termination section\nabove.\n\nThis policy is effective December 1, 2025.\nThis policy and license were last updated December 1, 2025.\n\nContact Us\nYou may contact us using the information below. Please contact us if you\nhave questions or concerns about our Privacy Policy or your Personal\nInformation. You may also use this information to contact us to request that\nwe stop sending you e-mails (or otherwise contacting you).\n\nProChange Behavior Solutions\n91 Point Judith Road\nSTE 26, Unit #333\nNarragansett, RI 02882\nCall: (401) 360-2980\nE-mail: info@prochange.com. Please type \"Privacy\" in the subject line.\n\n\n\n\nEnd User License Agreement\n\nPro-Change Behavior Systems, Inc., doing business as ProChange Behavior\nSolutions (ProChange), is giving you an easy-to-understand End User\nAgreement (EUA). We\'ve summed up the take-home messages you must\nknow if you wish to use Nurtured.\n\n1. Who can use Nurtured? We provide Nurtured for community\nmembers 18 years of age and older. Users must know about the risks,\nbenefits, and limits of our products as described here.\n\n2. You use Nurtured at your own risk. Nurtured is supplied \"as is.\" That\nmeans that there could be errors in the program. That may result in:\n\no Lost or flawed data,\no Computer or network problems, or\no Other issues which may impact your use of the software.\n\n3. What we expect. ProChange welcomes feedback on issues and\nconcerns about Nurtured. We think that such feedback is helpful in\nmaking our program better. You can send feedback through the email\nat info@prochange.com and/or (401) 360-2980 and be sure to mention\nNurtured in the message.\nThat said, Users who act in certain ways will not be allowed to keep\nusing our products. For example, Users who:\n\no Act in a way that our staff finds to be hostile or not proper,\no Create more than one,\no Post comments about ProChange or our software that are false\nor misleading, or\no Use our products in a way other than the purposes for which they\nare meant.\n\n4. Treat us as you would like to be treated, and we\'ll do the same.\n\n5. What if you don\'t abide by this EUA? We have the right to turn off\naccess to our program, with or without notice to you. That said, we will\ntry to solve any disputes before we take back your right to use our\nprogram.\n\nProChange reserves the right to keep data about your use of Nurtured.\nExcept with your consent, ProChange will not use your name, likeness\nor any other data that could identify you. Your data will only be used in\na group report that does not include your name or other data that\ncould identify you.\n\n6. What if we don\'t abide by this EUA? You have the right, at any time,\nto stop using Nurtured. You can stop texts at any time by texting back\nSTOP.\nOkay, now here is a more detailed description of the information above.\n\nTerms and Conditions :-\n\nBy using Nurtured, or any of the applications, services, programs, installers,\nutilities, contained files, databases, or integrated third-party products (herein\ncollectively referred to as the \"Program\"), or by using any services offered by\nPro-Change Behavior Systems, Inc., doing business as ProChange Behavior\nSolutions (\"ProChange\"), you agree that you have read, understood, agree to,\nand will abide by, all terms of this Agreement. We recommend you read this\nAgreement completely as you are agreeing to the terms of this Agreement as\nwell as agreeing to our online User agreement when you create a User\naccount or use any portion of the Program or related ProChange services.\nYou agree that this Program and associated services is intended to serve as a rapidly accessible, concise initial resource and not as a complete reference\nresource. It does not include information concerning every process, program,\ntherapeutic agent, diagnosis, laboratory or diagnostic test or procedure available. The Program is not intended as a substitute for direct involvement\nwith medical professionals, nor is the Program intended to be a substitute or\nreplacement for professional medical diagnoses. Neither ProChange, nor\nrelated interfaced third party providers, directly or indirectly practice\nmedicine or dispense medical services or advice and, as such, assume no\nliability for data or function contained in this Program or services, or its use.\nYou assume full responsibility for the appropriate use of medical information\nand/or recommendations contained in the Program and agree to hold\nProChange Behavior Solutions, and its third party providers, harmless from\nany and all claims or actions arising from your use of the Program.\n\nAccount Creation:-\n\nUsers may self register to access the Nurtured application. A User\'s account\nand login information is personal to the User and may only be used by such\nUser consistent with the terms hereof. Each User may have only one account.\nSharing of account and login information and/or creating multiple accounts\nis a basis for termination of a User\'s access.\n\nThereafter, each User will be asked to answer a series of questions designed\nto assess the particular behavioral change needs of the User. Based on the\nanswers to these initial questions, the Program will recommend applicable\nbehavioral change programs. Users may access each recommended\nbehavioral change program through Nurtured and answer additional\nquestions tailored to offer recommended actions and advice.\n\nBy using Nurtured, users may receive intermittent text messages. Message\nand data rates may apply. To put it in other terms, when you use Nurtured\nmessage services, the only additional cost to you is whatever your wireless\nprovider charges you to send and receive text messages. Users can opt out of\nNurtured any time.\n\nGood Standing :-\n\nProChange Behavior Solutions provides Nurtured for individuals wishing to\nuse the Program and who understand the risks, benefits, and limitations of\nour products as described herein and on our website.\n\nIn addition, ProChange Behavior Solutions encourages open discussion of\nissues and concerns regarding our software through the contact email and\nphone number listed above. In fact, constructive criticism is considered a\ncritical means for improving our software and services and is not considered\nto be inappropriate.\n\nThat said, Users who act in a manner that is deemed by ProChange Behavior\nSolutions to be detrimental to the ability of ProChange Behavior Solutions to\nprovide software and services to all clients equally, or those whose actions are\ndetrimental to the continuing well-being of the company will be considered\nto NOT be in Good Standing, and may have their right(s) to use the Program\nand services revoked.\n\nExamples of such unacceptable behavior include (but are not limited to)\nUsers who behave in a manner that our staff finds to be inappropriate or\nthreatening, Users who post comments about ProChange or related services\nthat are false, and Users who use our software or services in a manner other\nthan which they are intended.\nUsers acting in a way deemed to be inappropriate will be notified that their\nbehavior or action is considered disruptive and an attempt to correct such\nbehavior shall be encouraged. However, ProChange Behavior Solutions may\nterminate access to the Program with or without notice to a User as\ndescribed in the Term section below.\n\nNo Warranty\n\nTHE PROGRAM AND SERVICES ARE PROVIDED \"AS IS.\" PROCHANGE\nBEHAVIOR SOLUTIONS DOES NOT MAKE ANY WARRANTIES OR\nREPRESENTATIONS, EXPRESSED OR IMPLIED, CONCERNING THE\nMERCHANTABILITY, QUALITY, CLINICAL EFFICACY, NON-INFRINGEMENT OR\nFITNESS FOR A PARTICULAR PURPOSE OF THE PROGRAM OR SERVICES.\nPROCHANGE BEHAVIOR SYSTEMS, INC. DOES NOT WARRANTY ANY\nPARTICULAR OUTCOMES FOR ANY INDIVIDUAL USER OF THE PROGRAM.\nYOU ASSUME ALL RISK OF USE. NO WARRANTY IS GIVEN THAT THE\nPROGRAM OR SERVICE WILL BE ERROR-FREE, FREE OF VIRUSES, OR THAT\nIT WILL NOT ADVERSELY AFFECT YOUR COMPUTER OR OTHER PROGRAMS\nON YOUR COMPUTER. PROCHANGE BEHAVIOR SOLUTIONS DOES NOT\nWARRANT THAT THE FUNCTIONS CONTAINED IN THE PROGRAM OR\nSERVICES WILL MEET YOUR REQUIREMENTS OR GENERATE DESIRED\nRESULTS, OR THAT THE OPERATION OF THE PROGRAMS OR SERVICES WILL\nBE UNINTERRUPTED.\n\nLimitation of Liability\n\nPROCHANGE BEHAVIOR SOLUTIONS SHALL NOT BE LIABLE TO YOU OR ANY\nTHIRD PARTY FOR ANY DIRECT, SPECIAL, INDIRECT, CONSEQUENTIAL OR\nINCIDENTAL DAMAGES INCURRED ARISING OUT OF THE USE OR THE\nINABILITY TO USE THE PROGRAM OR SERVICES, OR OUT OF DATA\nPRODUCED BY THE PROGRAM, ANY LOSS OF DATA, OR ARISING FROM ANY\nBREACH OF A REPRESENTATION OR WARRANTY, OR FOR ANY CLAIM BY\nANY THIRD PARTY, REGARDLESS OF THE TYPE OF CLAIM OR THE NATURE\nOF THE CAUSE OF ACTION, EVEN IF PROCHANGE BEHAVIOR SOLUTIONS\nHAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE OR LOSS.\nPROCHANGE BEHAVIOR SOLUTIONS\' MAXIMUM LIABILITY FOR ANY\nREASON WILL BE TO REFUND THE AMOUNT YOU ACTUALLY PAID TO IT IN\nTHE ONE-YEAR PERIOD PRECEDING THE DATE OF THE CAUSE OF ACTION\nGIVING RISE TO THE CLAIM CONCERNED. THE FOREGOING LIMITATION OF\nLIABILITY IS AN AGREED ALLOCATION OF RISK THAT IS REFLECTED IN THE\nFEES FOR WHICH PROCHANGE SOFTWARE, SERVICES, SITE AND/OR\nCONTENT IS MADE AVAILABLE BY PROCHANGE BEHAVIOR SOLUTIONS,\nWITHOUT WHICH THE AVAILABILITY AND/OR PRICE OF WHICH WOULD\nNECESSARILY DIFFER FROM THOSE OFFERED BY PROCHANGE BEHAVIOR\nSOLUTIONS.\n\nConfidentiality\n\n\"Confidential Information\" means any information (without regard to the\nmedium on which such information may be recorded, whether written,\nvisual, audio, graphic, computerized, or otherwise) concerning or relating to\nyour property, business affairs and patients and specifically includes data\ntransmitted from your computer and phone(s) to ProChange Behavior\nSolutions\' servers. Confidential Information shall be held in confidence by\nProChange Behavior Solutions and shall be used only for the purposes\nprovided for in this Agreement. ProChange Behavior Solutions shall use the\nsame degree of care to safeguard your Confidential Information as it utilizes\nto safeguard its own Confidential Information. The terms of this provision\nshall apply to ProChange Behavior Solutions\' Confidential Information which\ncomes into your possession.\n\nPROCHANGE BEHAVIOR SOLUTIONS WILL KEEP YOUR data (including, but\nnot limited to, contact information and answers to behavioral change\nquestionnaires), CONFIDENTIAL. ProChange Behavior Solutions WILL NOT\nsell, trade, transmit, or provide any clinical information to insurers,\npharmaceutical companies, attorneys, governmental agencies, or any other\nthird-party except with your expressed permission. ProChange may de-\nidentify your data (i.e. remove any identifying information such as name,\nphone number, email, etc.) and use the de-identified data for reporting of the\naggregate data, data analysis, use of testimonials you provide for marketing,\nquality improvement and other such needs. ProChange Behavior Solutions\nrequires all its Users to review, understand, agree with, and comply with\nHIPAA regulations (described below). The confidentiality of any and all clinical\nrecords is mandated at all times.\n\nProChange Behavior Solutions may comply with any subpoena or similar\norder related to data on its server, provided that ProChange Behavior\nSolutions notifies you promptly upon receipt thereof, unless such notice is\nprohibited by law.\n\nProChange Behavior Solutions WILL NOT USE AD-WARE, SPY-WARE, or other\nmechanisms that may compromise confidentiality of records or intentionally\ndamage the integrity of the medical records or content on your computer.\n\nProperty\n\nThis Program and all related materials are the copyrighted property of\nProChange Behavior Solutions. Except as noted below, the Program and all\nintellectual property rights therein are owned by ProChange Behavior\nSolutions. You are authorized to use the Program for your own internal use.\nYou are prohibited from selling, leasing, or licensing the Program or any\nportion thereof to any unauthorized party, or using it to process the work of\nany other party. You are prohibited from creating derivative works based on\nthe Program without written permission from ProChange Behavior Solutions.\nYou are prohibited from disassembling or reverse engineering the Program,\nor removing any copyright notice from it. It is your responsibility to ensure\nthat anyone who has authorized access to the Program complies with the\nprovisions of this Agreement.\n\nTerm\n\nUsers are granted access to Nurtured products for the duration of the\nResearch Product, and for 2 months following the end of the research\nproduct. In addition to termination pursuant to this Agreement, Users\' access\nmay be terminated without notice to Users in the event of expiration or\ntermination of such other agreements.\n\nMiscellaneous\n\nIf you violate any terms of this Agreement, ProChange Behavior Solutions\nmay immediately and without notice terminate your right to use the\nProgram and any services provided by ProChange Behavior Solutions or\nthird-party providers.\n\nThis Agreement is nontransferable, nonexclusive, and only within the United\nStates and its territories.\n\nThis Agreement shall be governed in accordance with the laws of the State of\nRhode Island, excluding its conflict of laws principles. Any action relating in\nany way to this Agreement or the use of the Program shall be brought only in\nthe state or federal courts located in the State of Rhode Island, and by\naccepting this Agreement, you further consent to the personal jurisdiction of\nsuch courts for said purposes.\nIn the event that a provision of this Agreement is determined to violate any\nlaw or is unenforceable, the remainder of this Agreement shall remain in full\nforce and effect.\n\nNo failure or delay on the part of ProChange Behavior Solutions in exercising\nany right hereunder will operate as a waiver of, or impair, any such right, or\nany other right of ProChange Behavior Solutions.',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.istokWeb(
                                      fontWeight: FontWeight.w300,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF14181B),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
