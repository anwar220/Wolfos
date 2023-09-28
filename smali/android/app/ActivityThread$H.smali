# classes.dex

.class Landroid/app/ActivityThread$H;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# static fields
.field public static final APPLICATION_INFO_CHANGED:I = 0x9c

.field public static final ATTACH_AGENT:I = 0x9b

.field public static final ATTACH_STARTUP_AGENTS:I = 0xa2

.field public static final BIND_APPLICATION:I = 0x6e

.field public static final BIND_SERVICE:I = 0x79

.field public static final CLEAN_UP_CONTEXT:I = 0x77

.field public static final CONFIGURATION_CHANGED:I = 0x76

.field public static final CREATE_BACKUP_AGENT:I = 0x80

.field public static final CREATE_SERVICE:I = 0x72

.field public static final DESTROY_BACKUP_AGENT:I = 0x81

.field public static final DISPATCH_PACKAGE_BROADCAST:I = 0x85

.field public static final DUMP_ACTIVITY:I = 0x88

.field public static final DUMP_GFXINFO:I = 0xa5

.field public static final DUMP_HEAP:I = 0x87

.field public static final DUMP_PROVIDER:I = 0x8d

.field public static final DUMP_RESOURCES:I = 0xa6

.field public static final DUMP_SERVICE:I = 0x7b

.field public static final ENTER_ANIMATION_COMPLETE:I = 0x95

.field public static final EXECUTE_TRANSACTION:I = 0x9f

.field public static final EXIT_APPLICATION:I = 0x6f

.field public static final FINISH_INSTRUMENTATION_WITHOUT_RESTART:I = 0xab

.field public static final GC_WHEN_IDLE:I = 0x78

.field public static final INSTALL_PROVIDER:I = 0x91

.field public static final INSTRUMENT_WITHOUT_RESTART:I = 0xaa

.field public static final LOCAL_VOICE_INTERACTION_STARTED:I = 0x9a

.field public static final LOW_MEMORY:I = 0x7c

.field public static final ON_NEW_ACTIVITY_OPTIONS:I = 0x92

.field public static final PROFILER_CONTROL:I = 0x7f

.field public static final PURGE_RESOURCES:I = 0xa1

.field public static final RECEIVER:I = 0x71

.field public static final RELAUNCH_ACTIVITY:I = 0xa0

.field public static final REMOVE_PROVIDER:I = 0x83

.field public static final REQUEST_ASSIST_CONTEXT_EXTRAS:I = 0x8f

.field public static final RUN_ISOLATED_ENTRY_POINT:I = 0x9e

.field public static final SCHEDULE_CRASH:I = 0x86

.field public static final SERVICE_ARGS:I = 0x73

.field public static final SET_CONTENT_CAPTURE_OPTIONS_CALLBACK:I = 0xa4

.field public static final SET_CORE_SETTINGS:I = 0x8a

.field public static final SLEEPING:I = 0x89

.field public static final START_BINDER_TRACKING:I = 0x96

.field public static final STOP_BINDER_TRACKING_AND_DUMP:I = 0x97

.field public static final STOP_SERVICE:I = 0x74

.field public static final SUICIDE:I = 0x82

.field public static final TRANSLUCENT_CONVERSION_COMPLETE:I = 0x90

.field public static final UNBIND_SERVICE:I = 0x7a

.field public static final UNSTABLE_PROVIDER_DIED:I = 0x8e

.field public static final UPDATE_PACKAGE_COMPATIBILITY_INFO:I = 0x8b

.field public static final UPDATE_UI_TRANSLATION_STATE:I = 0xa3


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread;)V
    .registers 2

    iput-object p1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method codeToString(I)Ljava/lang/String;
    .registers 3

    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_MESSAGES:Z

    if-eqz v0, :cond_90

    packed-switch p1, :pswitch_data_96

    :pswitch_7  #0x70, 0x75, 0x7d, 0x7e, 0x84, 0x89, 0x8c, 0x93, 0x94, 0x96, 0x97, 0x98, 0x99, 0x9d, 0xa7, 0xa8, 0xa9
    goto/16 :goto_90

    :pswitch_9  #0xab
    const-string v0, "FINISH_INSTRUMENTATION_WITHOUT_RESTART"

    return-object v0

    :pswitch_c  #0xaa
    const-string v0, "INSTRUMENT_WITHOUT_RESTART"

    return-object v0

    :pswitch_f  #0xa6
    const-string v0, "DUMP_RESOURCES"

    return-object v0

    :pswitch_12  #0xa5
    const-string v0, "DUMP GFXINFO"

    return-object v0

    :pswitch_15  #0xa4
    const-string v0, "SET_CONTENT_CAPTURE_OPTIONS_CALLBACK"

    return-object v0

    :pswitch_18  #0xa3
    const-string v0, "UPDATE_UI_TRANSLATION_STATE"

    return-object v0

    :pswitch_1b  #0xa2
    const-string v0, "ATTACH_STARTUP_AGENTS"

    return-object v0

    :pswitch_1e  #0xa1
    const-string v0, "PURGE_RESOURCES"

    return-object v0

    :pswitch_21  #0xa0
    const-string v0, "RELAUNCH_ACTIVITY"

    return-object v0

    :pswitch_24  #0x9f
    const-string v0, "EXECUTE_TRANSACTION"

    return-object v0

    :pswitch_27  #0x9e
    const-string v0, "RUN_ISOLATED_ENTRY_POINT"

    return-object v0

    :pswitch_2a  #0x9c
    const-string v0, "APPLICATION_INFO_CHANGED"

    return-object v0

    :pswitch_2d  #0x9b
    const-string v0, "ATTACH_AGENT"

    return-object v0

    :pswitch_30  #0x9a
    const-string v0, "LOCAL_VOICE_INTERACTION_STARTED"

    return-object v0

    :pswitch_33  #0x95
    const-string v0, "ENTER_ANIMATION_COMPLETE"

    return-object v0

    :pswitch_36  #0x92
    const-string v0, "ON_NEW_ACTIVITY_OPTIONS"

    return-object v0

    :pswitch_39  #0x91
    const-string v0, "INSTALL_PROVIDER"

    return-object v0

    :pswitch_3c  #0x90
    const-string v0, "TRANSLUCENT_CONVERSION_COMPLETE"

    return-object v0

    :pswitch_3f  #0x8f
    const-string v0, "REQUEST_ASSIST_CONTEXT_EXTRAS"

    return-object v0

    :pswitch_42  #0x8e
    const-string v0, "UNSTABLE_PROVIDER_DIED"

    return-object v0

    :pswitch_45  #0x8d
    const-string v0, "DUMP_PROVIDER"

    return-object v0

    :pswitch_48  #0x8b
    const-string v0, "UPDATE_PACKAGE_COMPATIBILITY_INFO"

    return-object v0

    :pswitch_4b  #0x8a
    const-string v0, "SET_CORE_SETTINGS"

    return-object v0

    :pswitch_4e  #0x88
    const-string v0, "DUMP_ACTIVITY"

    return-object v0

    :pswitch_51  #0x87
    const-string v0, "DUMP_HEAP"

    return-object v0

    :pswitch_54  #0x86
    const-string v0, "SCHEDULE_CRASH"

    return-object v0

    :pswitch_57  #0x85
    const-string v0, "DISPATCH_PACKAGE_BROADCAST"

    return-object v0

    :pswitch_5a  #0x83
    const-string v0, "REMOVE_PROVIDER"

    return-object v0

    :pswitch_5d  #0x82
    const-string v0, "SUICIDE"

    return-object v0

    :pswitch_60  #0x81
    const-string v0, "DESTROY_BACKUP_AGENT"

    return-object v0

    :pswitch_63  #0x80
    const-string v0, "CREATE_BACKUP_AGENT"

    return-object v0

    :pswitch_66  #0x7f
    const-string v0, "PROFILER_CONTROL"

    return-object v0

    :pswitch_69  #0x7c
    const-string v0, "LOW_MEMORY"

    return-object v0

    :pswitch_6c  #0x7b
    const-string v0, "DUMP_SERVICE"

    return-object v0

    :pswitch_6f  #0x7a
    const-string v0, "UNBIND_SERVICE"

    return-object v0

    :pswitch_72  #0x79
    const-string v0, "BIND_SERVICE"

    return-object v0

    :pswitch_75  #0x78
    const-string v0, "GC_WHEN_IDLE"

    return-object v0

    :pswitch_78  #0x77
    const-string v0, "CLEAN_UP_CONTEXT"

    return-object v0

    :pswitch_7b  #0x76
    const-string v0, "CONFIGURATION_CHANGED"

    return-object v0

    :pswitch_7e  #0x74
    const-string v0, "STOP_SERVICE"

    return-object v0

    :pswitch_81  #0x73
    const-string v0, "SERVICE_ARGS"

    return-object v0

    :pswitch_84  #0x72
    const-string v0, "CREATE_SERVICE"

    return-object v0

    :pswitch_87  #0x71
    const-string v0, "RECEIVER"

    return-object v0

    :pswitch_8a  #0x6f
    const-string v0, "EXIT_APPLICATION"

    return-object v0

    :pswitch_8d  #0x6e
    const-string v0, "BIND_APPLICATION"

    return-object v0

    :cond_90
    :goto_90
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_96
    .packed-switch 0x6e
        :pswitch_8d  #0000006e
        :pswitch_8a  #0000006f
        :pswitch_7  #00000070
        :pswitch_87  #00000071
        :pswitch_84  #00000072
        :pswitch_81  #00000073
        :pswitch_7e  #00000074
        :pswitch_7  #00000075
        :pswitch_7b  #00000076
        :pswitch_78  #00000077
        :pswitch_75  #00000078
        :pswitch_72  #00000079
        :pswitch_6f  #0000007a
        :pswitch_6c  #0000007b
        :pswitch_69  #0000007c
        :pswitch_7  #0000007d
        :pswitch_7  #0000007e
        :pswitch_66  #0000007f
        :pswitch_63  #00000080
        :pswitch_60  #00000081
        :pswitch_5d  #00000082
        :pswitch_5a  #00000083
        :pswitch_7  #00000084
        :pswitch_57  #00000085
        :pswitch_54  #00000086
        :pswitch_51  #00000087
        :pswitch_4e  #00000088
        :pswitch_7  #00000089
        :pswitch_4b  #0000008a
        :pswitch_48  #0000008b
        :pswitch_7  #0000008c
        :pswitch_45  #0000008d
        :pswitch_42  #0000008e
        :pswitch_3f  #0000008f
        :pswitch_3c  #00000090
        :pswitch_39  #00000091
        :pswitch_36  #00000092
        :pswitch_7  #00000093
        :pswitch_7  #00000094
        :pswitch_33  #00000095
        :pswitch_7  #00000096
        :pswitch_7  #00000097
        :pswitch_7  #00000098
        :pswitch_7  #00000099
        :pswitch_30  #0000009a
        :pswitch_2d  #0000009b
        :pswitch_2a  #0000009c
        :pswitch_7  #0000009d
        :pswitch_27  #0000009e
        :pswitch_24  #0000009f
        :pswitch_21  #000000a0
        :pswitch_1e  #000000a1
        :pswitch_1b  #000000a2
        :pswitch_18  #000000a3
        :pswitch_15  #000000a4
        :pswitch_12  #000000a5
        :pswitch_f  #000000a6
        :pswitch_7  #000000a7
        :pswitch_7  #000000a8
        :pswitch_7  #000000a9
        :pswitch_c  #000000aa
        :pswitch_9  #000000ab
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_MESSAGES:Z

    const-string v1, "ActivityThread"

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> handling: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v2}, Landroid/app/ActivityThread$H;->codeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x40

    packed-switch v0, :pswitch_data_3a2

    :pswitch_2b  #0x70, 0x75, 0x7d, 0x7e, 0x84, 0x89, 0x8c, 0x93, 0x94, 0x98, 0x99, 0x9d, 0xa7, 0xa8, 0xa9
    goto/16 :goto_375

    :pswitch_2d  #0xab
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-$$Nest$mhandleFinishInstrumentationWithoutRestart(Landroid/app/ActivityThread;)V

    goto/16 :goto_375

    :pswitch_34  #0xaa
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$AppBindData;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleInstrumentWithoutRestart(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V

    goto/16 :goto_375

    :pswitch_3f  #0xa6
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$DumpResourcesData;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleDumpResources(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpResourcesData;)V

    goto/16 :goto_375

    :pswitch_4a  #0xa5
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleDumpGfxInfo(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_375

    :pswitch_55  #0xa4
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleSetContentCaptureOptionsCallback(Landroid/app/ActivityThread;Ljava/lang/String;)V

    goto/16 :goto_375

    :pswitch_60  #0xa3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/view/translation/TranslationSpec;

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v6, Landroid/view/translation/TranslationSpec;

    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v8, Landroid/view/translation/UiTranslationSpec;

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityThread;->-$$Nest$mupdateUiTranslationState(Landroid/app/ActivityThread;Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V

    goto/16 :goto_375

    :pswitch_87  #0xa2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/app/ActivityThread;->handleAttachStartupAgents(Ljava/lang/String;)V

    goto/16 :goto_375

    :pswitch_90  #0xa1
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->schedulePurgeIdler()V

    goto/16 :goto_375

    :pswitch_97  #0xa0
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread;->handleRelaunchActivityLocally(Landroid/os/IBinder;)V

    goto/16 :goto_375

    :pswitch_a2  #0x9f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/servertransaction/ClientTransaction;

    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v2}, Landroid/app/ActivityThread;->-$$Nest$fgetmTransactionExecutor(Landroid/app/ActivityThread;)Landroid/app/servertransaction/TransactionExecutor;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/servertransaction/TransactionExecutor;->execute(Landroid/app/servertransaction/ClientTransaction;)V

    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_375

    invoke-virtual {v0}, Landroid/app/servertransaction/ClientTransaction;->recycle()V

    goto/16 :goto_375

    :pswitch_ba  #0x9e
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    iget-object v3, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroid/app/ActivityThread;->-$$Nest$mhandleRunIsolatedEntryPoint(Landroid/app/ActivityThread;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_375

    :pswitch_d1  #0x9c
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread;->handleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    goto/16 :goto_375

    :pswitch_dc  #0x9b
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-eqz v0, :cond_eb

    iget-object v3, v0, Landroid/app/Application;->mLoadedApk:Landroid/app/LoadedApk;

    goto :goto_ec

    :cond_eb
    const/4 v3, 0x0

    :goto_ec
    invoke-static {v2, v3}, Landroid/app/ActivityThread;->handleAttachAgent(Ljava/lang/String;Landroid/app/LoadedApk;)V

    goto/16 :goto_375

    :pswitch_f1  #0x9a
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    iget-object v3, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0, v2, v3}, Landroid/app/ActivityThread;->-$$Nest$mhandleLocalVoiceInteractionStarted(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    goto/16 :goto_375

    :pswitch_108  #0x97
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleStopBinderTrackingAndDump(Landroid/app/ActivityThread;Landroid/os/ParcelFileDescriptor;)V

    goto/16 :goto_375

    :pswitch_113  #0x96
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-$$Nest$mhandleStartBinderTracking(Landroid/app/ActivityThread;)V

    goto/16 :goto_375

    :pswitch_11a  #0x95
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleEnterAnimationComplete(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    goto/16 :goto_375

    :pswitch_125  #0x92
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityOptions;

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityThread;->onNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    goto/16 :goto_375

    :pswitch_138  #0x91
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/ProviderInfo;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread;->handleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    goto/16 :goto_375

    :pswitch_143  #0x90
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v2, :cond_14e

    goto :goto_14f

    :cond_14e
    move v2, v3

    :goto_14f
    invoke-virtual {v0, v4, v2}, Landroid/app/ActivityThread;->handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    goto/16 :goto_375

    :pswitch_154  #0x8f
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$RequestAssistContextExtras;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread;->handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V

    goto/16 :goto_375

    :pswitch_15f  #0x8e
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {v0, v2, v3}, Landroid/app/ActivityThread;->handleUnstableProviderDied(Landroid/os/IBinder;Z)V

    goto/16 :goto_375

    :pswitch_16a  #0x8d
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleDumpProvider(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_375

    :pswitch_175  #0x8b
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$UpdateCompatibilityData;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    goto/16 :goto_375

    :pswitch_180  #0x8a
    const-string/jumbo v0, "setCoreSettings"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleSetCoreSettings(Landroid/app/ActivityThread;Landroid/os/Bundle;)V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_375

    :pswitch_194  #0x88
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleDumpActivity(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_375

    :pswitch_19f  #0x87
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$DumpHeapData;

    invoke-static {v0}, Landroid/app/ActivityThread;->handleDumpHeap(Landroid/app/ActivityThread$DumpHeapData;)V

    goto/16 :goto_375

    :pswitch_1a8  #0x86
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4, v2, v5, v3}, Landroid/app/ActivityThread;->-$$Nest$mthrowRemoteServiceException(Landroid/app/ActivityThread;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto/16 :goto_375

    :pswitch_1c0  #0x85
    const-string v0, "broadcastPackage"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/app/ActivityThread;->handleDispatchPackageBroadcast(I[Ljava/lang/String;)V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_375

    :pswitch_1d5  #0x83
    const-string/jumbo v0, "providerRemove"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread;->completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_375

    :pswitch_1e9  #0x82
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_375

    :pswitch_1f2  #0x81
    const-string v0, "backupDestroyAgent"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleDestroyBackupAgent(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_375

    :pswitch_205  #0x80
    const-string v0, "backupCreateAgent"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleCreateBackupAgent(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_375

    :pswitch_218  #0x7f
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_21f

    goto :goto_220

    :cond_21f
    move v2, v3

    :goto_220
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ProfilerInfo;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/ActivityThread;->handleProfilerControl(ZLandroid/app/ProfilerInfo;I)V

    goto/16 :goto_375

    :pswitch_22b  #0x7c
    const-string v0, "lowMemory"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->handleLowMemory()V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_375

    :pswitch_23a  #0x7b
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleDumpService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_375

    :pswitch_245  #0x7a
    const-string/jumbo v0, "serviceUnbind"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$BindServiceData;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleUnbindService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->schedulePurgeIdler()V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_375

    :pswitch_25e  #0x79
    const-string/jumbo v0, "serviceBind"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$BindServiceData;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleBindService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_375

    :pswitch_272  #0x78
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    goto/16 :goto_375

    :pswitch_279  #0x77
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ContextCleanupInfo;

    iget-object v2, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    iget-object v3, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    iget-object v4, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/app/ContextImpl;->performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_375

    :pswitch_288  #0x76
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-$$Nest$fgetmConfigurationController(Landroid/app/ActivityThread;)Landroid/app/ConfigurationController;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/res/Configuration;

    invoke-virtual {v0, v2}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/16 :goto_375

    :pswitch_297  #0x74
    const-string/jumbo v0, "serviceStop"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleStopService(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->schedulePurgeIdler()V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_375

    :pswitch_2b0  #0x73
    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_2d3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "serviceStart: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_2d3
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$ServiceArgsData;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleServiceArgs(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_375

    :pswitch_2e1  #0x72
    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_304

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "serviceCreate: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_304
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$CreateServiceData;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleCreateService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_375

    :pswitch_311  #0x71
    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_341

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ReceiverData;

    iget-object v2, v0, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_33c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastReceiveComp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_341

    :cond_33c
    const-string v2, "broadcastReceiveComp"

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_341
    :goto_341
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$ReceiverData;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleReceiver(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_375

    :pswitch_34e  #0x6f
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v0, :cond_35b

    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onTerminate()V

    :cond_35b
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_375

    :pswitch_363  #0x6e
    const-string v0, "bindApplication"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$AppBindData;

    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v2, v0}, Landroid/app/ActivityThread;->-$$Nest$mhandleBindApplication(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    nop

    :cond_375
    :goto_375
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v0, Lcom/android/internal/os/SomeArgs;

    if-eqz v2, :cond_381

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :cond_381
    sget-boolean v2, Landroid/app/ActivityThread;->DEBUG_MESSAGES:Z

    if-eqz v2, :cond_3a1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< done: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v3}, Landroid/app/ActivityThread$H;->codeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a1
    return-void

    :pswitch_data_3a2
    .packed-switch 0x6e
        :pswitch_363  #0000006e
        :pswitch_34e  #0000006f
        :pswitch_2b  #00000070
        :pswitch_311  #00000071
        :pswitch_2e1  #00000072
        :pswitch_2b0  #00000073
        :pswitch_297  #00000074
        :pswitch_2b  #00000075
        :pswitch_288  #00000076
        :pswitch_279  #00000077
        :pswitch_272  #00000078
        :pswitch_25e  #00000079
        :pswitch_245  #0000007a
        :pswitch_23a  #0000007b
        :pswitch_22b  #0000007c
        :pswitch_2b  #0000007d
        :pswitch_2b  #0000007e
        :pswitch_218  #0000007f
        :pswitch_205  #00000080
        :pswitch_1f2  #00000081
        :pswitch_1e9  #00000082
        :pswitch_1d5  #00000083
        :pswitch_2b  #00000084
        :pswitch_1c0  #00000085
        :pswitch_1a8  #00000086
        :pswitch_19f  #00000087
        :pswitch_194  #00000088
        :pswitch_2b  #00000089
        :pswitch_180  #0000008a
        :pswitch_175  #0000008b
        :pswitch_2b  #0000008c
        :pswitch_16a  #0000008d
        :pswitch_15f  #0000008e
        :pswitch_154  #0000008f
        :pswitch_143  #00000090
        :pswitch_138  #00000091
        :pswitch_125  #00000092
        :pswitch_2b  #00000093
        :pswitch_2b  #00000094
        :pswitch_11a  #00000095
        :pswitch_113  #00000096
        :pswitch_108  #00000097
        :pswitch_2b  #00000098
        :pswitch_2b  #00000099
        :pswitch_f1  #0000009a
        :pswitch_dc  #0000009b
        :pswitch_d1  #0000009c
        :pswitch_2b  #0000009d
        :pswitch_ba  #0000009e
        :pswitch_a2  #0000009f
        :pswitch_97  #000000a0
        :pswitch_90  #000000a1
        :pswitch_87  #000000a2
        :pswitch_60  #000000a3
        :pswitch_55  #000000a4
        :pswitch_4a  #000000a5
        :pswitch_3f  #000000a6
        :pswitch_2b  #000000a7
        :pswitch_2b  #000000a8
        :pswitch_2b  #000000a9
        :pswitch_34  #000000aa
        :pswitch_2d  #000000ab
    .end packed-switch
.end method
