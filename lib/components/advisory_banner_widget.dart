import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'advisory_banner_model.dart';
export 'advisory_banner_model.dart';

class AdvisoryBannerWidget extends StatefulWidget {
  const AdvisoryBannerWidget({super.key});

  @override
  State<AdvisoryBannerWidget> createState() => _AdvisoryBannerWidgetState();
}

class _AdvisoryBannerWidgetState extends State<AdvisoryBannerWidget>
    with TickerProviderStateMixin {
  late AdvisoryBannerModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdvisoryBannerModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('ADVISORY_BANNER_AdvisoryBanner_ON_INIT_S');
      logFirebaseEvent('AdvisoryBanner_widget_animation');
      if (animationsMap['containerOnActionTriggerAnimation'] != null) {
        await animationsMap['containerOnActionTriggerAnimation']!
            .controller
            .forward(from: 0.0);
      }
      logFirebaseEvent('AdvisoryBanner_wait__delay');
      await Future.delayed(
        Duration(
          milliseconds: 5000,
        ),
      );
      logFirebaseEvent('AdvisoryBanner_widget_animation');
      if (animationsMap['containerOnActionTriggerAnimation'] != null) {
        await animationsMap['containerOnActionTriggerAnimation']!
            .controller
            .reverse();
      }
      logFirebaseEvent('AdvisoryBanner_update_app_state');
      FFAppState().showBanner = false;
      _model.updatePage(() {});
    });

    animationsMap.addAll({
      'containerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        applyInitialState: true,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFF7043),
        borderRadius: BorderRadius.circular(24.0),
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 10.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '⚠️ Weather Warning:\nToday’s weather may not be ideal for being outdoors. Stay safe!',
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    font: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                    ),
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                    fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                  ),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    )
        .animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!)
        .animateOnActionTrigger(
          animationsMap['containerOnActionTriggerAnimation']!,
        );
  }
}
