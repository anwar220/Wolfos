# classes3.dex

.class public Landroid/util/BoostFramework;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/BoostFramework$ScrollOptimizer;,
        Landroid/util/BoostFramework$WorkloadType;,
        Landroid/util/BoostFramework$Draw;,
        Landroid/util/BoostFramework$Launch;,
        Landroid/util/BoostFramework$Scroll;
    }
.end annotation


# static fields
.field public static final MPCTLV3_GPU_IS_APP_BG:I = 0x42824000

.field public static final MPCTLV3_GPU_IS_APP_FG:I = 0x42820000

.field private static final PERFORMANCE_CLASS:Ljava/lang/String; = "com.qualcomm.qti.Performance"

.field private static final PERFORMANCE_JAR:Ljava/lang/String; = "/system/framework/QPerformance.jar"

.field public static final PERF_HAL_V22:F = 2.2f

.field public static final PERF_HAL_V23:F = 2.3f

.field private static final SLOW_OPERATION_THRESHOLD_MS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "BoostFramework"

.field public static final UXE_EVENT_BINDAPP:I = 0x2

.field public static final UXE_EVENT_DISPLAYED_ACT:I = 0x3

.field public static final UXE_EVENT_GAME:I = 0x5

.field public static final UXE_EVENT_KILL:I = 0x4

.field public static final UXE_EVENT_PKG_INSTALL:I = 0x8

.field public static final UXE_EVENT_PKG_UNINSTALL:I = 0x7

.field public static final UXE_EVENT_SUB_LAUNCH:I = 0x6

.field public static final UXE_TRIGGER:I = 0x1

.field private static final UXPERFORMANCE_CLASS:Ljava/lang/String; = "com.qualcomm.qti.UxPerformance"

.field private static final UXPERFORMANCE_JAR:Ljava/lang/String; = "/system/framework/UxPerformance.jar"

.field public static final VENDOR_FEEDBACK_LAUNCH_END_POINT:I = 0x1602

.field public static final VENDOR_FEEDBACK_PA_FW:I = 0x1604

.field public static final VENDOR_FEEDBACK_WORKLOAD_TYPE:I = 0x1601

.field public static final VENDOR_HINT_ACTIVITY_BOOST:I = 0x1084

.field public static final VENDOR_HINT_ANIM_BOOST:I = 0x1083

.field public static final VENDOR_HINT_APP_UPDATE:I = 0x1092

.field public static final VENDOR_HINT_BINDAPP:I = 0x10a0

.field public static final VENDOR_HINT_BOOST_RENDERTHREAD:I = 0x1096

.field public static final VENDOR_HINT_DRAG_BOOST:I = 0x1087

.field public static final VENDOR_HINT_DRAG_END:I = 0x1052

.field public static final VENDOR_HINT_DRAG_START:I = 0x1051

.field public static final VENDOR_HINT_FIRST_DRAW:I = 0x1042

.field public static final VENDOR_HINT_FIRST_LAUNCH_BOOST:I = 0x1081

.field public static final VENDOR_HINT_IME_LAUNCH_EVENT:I = 0x109f

.field public static final VENDOR_HINT_KILL:I = 0x1093

.field public static final VENDOR_HINT_MTP_BOOST:I = 0x1086

.field public static final VENDOR_HINT_PACKAGE_INSTALL_BOOST:I = 0x1088

.field public static final VENDOR_HINT_PERFORMANCE_MODE:I = 0x1091

.field public static final VENDOR_HINT_PKG_INSTALL:I = 0x10a3

.field public static final VENDOR_HINT_PKG_UNINSTALL:I = 0x10a4

.field public static final VENDOR_HINT_ROTATION_ANIM_BOOST:I = 0x1090

.field public static final VENDOR_HINT_ROTATION_LATENCY_BOOST:I = 0x1089

.field public static final VENDOR_HINT_SCROLL_BOOST:I = 0x1080

.field public static final VENDOR_HINT_SUBSEQ_LAUNCH_BOOST:I = 0x1082

.field public static final VENDOR_HINT_TAP_EVENT:I = 0x1043

.field public static final VENDOR_HINT_TOUCH_BOOST:I = 0x1085

.field public static final VENDOR_HINT_WARM_LAUNCH:I = 0x10a1

.field public static final VENDOR_T_API_LEVEL:I = 0x21

.field private static sAcqAndReleaseFunc:Ljava/lang/reflect/Method;

.field private static sAcquireFunc:Ljava/lang/reflect/Method;

.field private static sFeedbackFunc:Ljava/lang/reflect/Method;

.field private static sFeedbackFuncExtn:Ljava/lang/reflect/Method;

.field private static sIOPStart:Ljava/lang/reflect/Method;

.field private static sIOPStop:Ljava/lang/reflect/Method;

.field private static sIsLoaded:Z

.field private static sPerfClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sPerfEventFunc:Ljava/lang/reflect/Method;

.field private static sPerfGetPerfHalVerFunc:Ljava/lang/reflect/Method;

.field private static sPerfGetPropFunc:Ljava/lang/reflect/Method;

.field private static sPerfHintFunc:Ljava/lang/reflect/Method;

.field private static sPerfSyncRequest:Ljava/lang/reflect/Method;

.field private static sReleaseFunc:Ljava/lang/reflect/Method;

.field private static sReleaseHandlerFunc:Ljava/lang/reflect/Method;

.field private static sUXEngineEvents:Ljava/lang/reflect/Method;

.field private static sUXEngineTrigger:Ljava/lang/reflect/Method;

.field private static sUxIOPStart:Ljava/lang/reflect/Method;

.field private static sUxIsLoaded:Z

.field private static sUxPerfClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sperfHintAcqRelFunc:Ljava/lang/reflect/Method;

.field private static sperfHintRenewFunc:Ljava/lang/reflect/Method;


# instance fields
.field public final board_api_lvl:I

.field public final board_first_api_lvl:I

.field private mPerf:Ljava/lang/Object;

.field private mUxPerf:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Landroid/util/BoostFramework;->sIsLoaded:Z

    const/4 v1, 0x0

    sput-object v1, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    sput-object v1, Landroid/util/BoostFramework;->sAcquireFunc:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sPerfHintFunc:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sReleaseFunc:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sReleaseHandlerFunc:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sFeedbackFunc:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sFeedbackFuncExtn:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sPerfGetPropFunc:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sAcqAndReleaseFunc:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sperfHintAcqRelFunc:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sperfHintRenewFunc:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sPerfEventFunc:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sPerfGetPerfHalVerFunc:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sPerfSyncRequest:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sIOPStart:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sIOPStop:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sUXEngineEvents:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sUXEngineTrigger:Ljava/lang/reflect/Method;

    sput-boolean v0, Landroid/util/BoostFramework;->sUxIsLoaded:Z

    sput-object v1, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    sput-object v1, Landroid/util/BoostFramework;->sUxIOPStart:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ro.board.first_api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/util/BoostFramework;->board_first_api_lvl:I

    const-string/jumbo v0, "ro.board.api_level"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/util/BoostFramework;->board_api_lvl:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/util/BoostFramework;->initFunctions()V

    :try_start_1e
    sget-object v0, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    :cond_28
    sget-object v0, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_32} :catch_33

    :cond_32
    goto :goto_4c

    :catch_33
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoostFramework() : Exception_2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BoostFramework"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4c
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/util/BoostFramework;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ro.board.first_api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/util/BoostFramework;->board_first_api_lvl:I

    const-string/jumbo v0, "ro.board.api_level"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/util/BoostFramework;->board_api_lvl:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/util/BoostFramework;->initFunctions()V

    :try_start_1e
    sget-object v0, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const/4 v2, 0x1

    if-eqz v0, :cond_39

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_39

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    :cond_39
    sget-object v0, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    if-eqz v0, :cond_5c

    if-eqz p2, :cond_56

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_55

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;

    :cond_55
    goto :goto_5c

    :cond_56
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_5c} :catch_5d

    :cond_5c
    :goto_5c
    goto :goto_76

    :catch_5d
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoostFramework() : Exception_3 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BoostFramework"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_76
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ro.board.first_api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/util/BoostFramework;->board_first_api_lvl:I

    const-string/jumbo v0, "ro.board.api_level"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/util/BoostFramework;->board_api_lvl:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/util/BoostFramework;->initFunctions()V

    :try_start_1e
    sget-object v0, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    if-eqz v0, :cond_3d

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_3d

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    :cond_3d
    sget-object v0, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_47} :catch_48

    :cond_47
    goto :goto_61

    :catch_48
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoostFramework() : Exception_5 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BoostFramework"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_61
    return-void
.end method

.method private checkTime(JLjava/lang/String;)V
    .registers 9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x14

    cmp-long v2, v0, v2

    if-lez v2, :cond_23

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Slow Operation: BoostFramework %s took %sms"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-void
.end method

.method private initFunctions()V
    .registers 14

    const-class v0, [I

    const-class v1, Landroid/util/BoostFramework;

    monitor-enter v1

    :try_start_5
    sget-boolean v2, Landroid/util/BoostFramework;->sIsLoaded:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_22a

    if-nez v2, :cond_228

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_d
    const-string v6, "com.qualcomm.qti.Performance"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    aput-object v0, v6, v4

    sget-object v7, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v8, "perfLockAcquire"

    invoke-virtual {v7, v8, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Landroid/util/BoostFramework;->sAcquireFunc:Ljava/lang/reflect/Method;

    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v2

    move-object v6, v8

    sget-object v8, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfHint"

    invoke-virtual {v8, v9, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/util/BoostFramework;->sPerfHintFunc:Ljava/lang/reflect/Method;

    new-array v8, v5, [Ljava/lang/Class;

    move-object v6, v8

    sget-object v8, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfLockRelease"

    invoke-virtual {v8, v9, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/util/BoostFramework;->sReleaseFunc:Ljava/lang/reflect/Method;

    new-array v8, v4, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    move-object v6, v8

    sget-object v8, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfLockReleaseHandler"

    invoke-virtual {v8, v9, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/util/BoostFramework;->sReleaseHandlerFunc:Ljava/lang/reflect/Method;

    new-array v8, v3, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    move-object v6, v8

    sget-object v8, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfGetFeedback"

    invoke-virtual {v8, v9, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/util/BoostFramework;->sFeedbackFunc:Ljava/lang/reflect/Method;

    new-array v8, v7, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    aput-object v0, v8, v2

    move-object v6, v8

    sget-object v8, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfGetFeedbackExtn"

    invoke-virtual {v8, v9, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/util/BoostFramework;->sFeedbackFuncExtn:Ljava/lang/reflect/Method;

    new-array v8, v2, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v3

    move-object v6, v8

    sget-object v8, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfIOPrefetchStart"

    invoke-virtual {v8, v9, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/util/BoostFramework;->sIOPStart:Ljava/lang/reflect/Method;

    new-array v8, v5, [Ljava/lang/Class;

    move-object v6, v8

    sget-object v8, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfIOPrefetchStop"

    invoke-virtual {v8, v9, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/util/BoostFramework;->sIOPStop:Ljava/lang/reflect/Method;

    new-array v8, v3, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v5

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    move-object v6, v8

    sget-object v8, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfGetProp"

    invoke-virtual {v8, v9, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/util/BoostFramework;->sPerfGetPropFunc:Ljava/lang/reflect/Method;

    const/4 v8, 0x5

    new-array v9, v8, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v5

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v4

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v2

    aput-object v0, v9, v7

    move-object v6, v9

    sget-object v9, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v10, "perfLockAcqAndRelease"

    invoke-virtual {v9, v10, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Landroid/util/BoostFramework;->sAcqAndReleaseFunc:Ljava/lang/reflect/Method;

    new-array v9, v7, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v5

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v4

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    aput-object v0, v9, v2

    move-object v6, v9

    sget-object v9, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v10, "perfEvent"

    invoke-virtual {v9, v10, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Landroid/util/BoostFramework;->sPerfEventFunc:Ljava/lang/reflect/Method;

    new-array v9, v4, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v5

    move-object v6, v9

    sget-object v9, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v10, "perfSyncRequest"

    invoke-virtual {v9, v10, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Landroid/util/BoostFramework;->sPerfSyncRequest:Ljava/lang/reflect/Method;

    const/4 v9, 0x7

    new-array v10, v9, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v5

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v4

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v3

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v2

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v7

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v8

    const/4 v11, 0x6

    aput-object v0, v10, v11

    move-object v6, v10

    sget-object v10, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v12, "perfHintAcqRel"

    invoke-virtual {v10, v12, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    sput-object v10, Landroid/util/BoostFramework;->sperfHintAcqRelFunc:Ljava/lang/reflect/Method;

    new-array v9, v9, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v5

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v4

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v3

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v2

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v7

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v8

    aput-object v0, v9, v11

    move-object v0, v9

    sget-object v6, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfHintRenew"

    invoke-virtual {v6, v9, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Landroid/util/BoostFramework;->sperfHintRenewFunc:Ljava/lang/reflect/Method;
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_178} :catch_1d2
    .catchall {:try_start_d .. :try_end_178} :catchall_22a

    :try_start_178
    new-array v6, v5, [Ljava/lang/Class;

    move-object v0, v6

    sget-object v6, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfGetHalVer"

    invoke-virtual {v6, v9, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Landroid/util/BoostFramework;->sPerfGetPerfHalVerFunc:Ljava/lang/reflect/Method;
    :try_end_186
    .catch Ljava/lang/Exception; {:try_start_178 .. :try_end_186} :catch_187
    .catchall {:try_start_178 .. :try_end_186} :catchall_22a

    goto :goto_192

    :catch_187
    move-exception v6

    :try_start_188
    const-string v9, "BoostFramework"

    const-string v10, "BoostFramework() : Exception_1 = perfGetHalVer not supported"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    sput-object v9, Landroid/util/BoostFramework;->sPerfGetPerfHalVerFunc:Ljava/lang/reflect/Method;
    :try_end_192
    .catch Ljava/lang/Exception; {:try_start_188 .. :try_end_192} :catch_1d2
    .catchall {:try_start_188 .. :try_end_192} :catchall_22a

    :goto_192
    :try_start_192
    new-array v6, v8, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v5

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v4

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v2

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    move-object v0, v6

    sget-object v6, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v7, "perfUXEngine_events"

    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Landroid/util/BoostFramework;->sUXEngineEvents:Ljava/lang/reflect/Method;

    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    move-object v0, v6

    sget-object v6, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v7, "perfUXEngine_trigger"

    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Landroid/util/BoostFramework;->sUXEngineTrigger:Ljava/lang/reflect/Method;
    :try_end_1c6
    .catch Ljava/lang/Exception; {:try_start_192 .. :try_end_1c6} :catch_1c7
    .catchall {:try_start_192 .. :try_end_1c6} :catchall_22a

    goto :goto_1cf

    :catch_1c7
    move-exception v6

    :try_start_1c8
    const-string v7, "BoostFramework"

    const-string v8, "BoostFramework() : Exception_4 = PreferredApps not supported"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1cf
    sput-boolean v4, Landroid/util/BoostFramework;->sIsLoaded:Z
    :try_end_1d1
    .catch Ljava/lang/Exception; {:try_start_1c8 .. :try_end_1d1} :catch_1d2
    .catchall {:try_start_1c8 .. :try_end_1d1} :catchall_22a

    goto :goto_1eb

    :catch_1d2
    move-exception v0

    :try_start_1d3
    const-string v6, "BoostFramework"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BoostFramework() : Exception_1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1eb
    .catchall {:try_start_1d3 .. :try_end_1eb} :catchall_22a

    :goto_1eb
    :try_start_1eb
    const-string v0, "com.qualcomm.qti.UxPerformance"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    new-array v0, v2, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v5

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v4

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v3

    sget-object v2, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    const-string/jumbo v3, "perfIOPrefetchStart"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/util/BoostFramework;->sUxIOPStart:Ljava/lang/reflect/Method;

    sput-boolean v4, Landroid/util/BoostFramework;->sUxIsLoaded:Z
    :try_end_20e
    .catch Ljava/lang/Exception; {:try_start_1eb .. :try_end_20e} :catch_20f
    .catchall {:try_start_1eb .. :try_end_20e} :catchall_22a

    goto :goto_228

    :catch_20f
    move-exception v0

    :try_start_210
    const-string v2, "BoostFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BoostFramework() Ux Perf: Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_228
    :goto_228
    monitor-exit v1

    return-void

    :catchall_22a
    move-exception v0

    monitor-exit v1
    :try_end_22c
    .catchall {:try_start_210 .. :try_end_22c} :catchall_22a

    throw v0
.end method


# virtual methods
.method public getPerfHalVersion()D
    .registers 6

    const-wide v0, 0x40019999a0000000L  # 2.200000047683716

    :try_start_5
    sget-object v2, Landroid/util/BoostFramework;->sPerfGetPerfHalVerFunc:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1a

    iget-object v3, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_1b

    move-wide v0, v3

    :cond_1a
    goto :goto_34

    :catch_1b
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BoostFramework"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    return-wide v0
.end method

.method public perfEvent(ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    new-array v1, v0, [I

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/util/BoostFramework;->perfEvent(ILjava/lang/String;I[I)V

    return-void
.end method

.method public varargs perfEvent(ILjava/lang/String;I[I)V
    .registers 10

    :try_start_0
    sget-object v0, Landroid/util/BoostFramework;->sPerfEventFunc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_20

    iget-object v1, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    :cond_20
    goto :goto_3a

    :catch_21
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BoostFramework"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    return-void
.end method

.method public perfGetFeedback(ILjava/lang/String;)I
    .registers 9

    const/4 v0, -0x1

    :try_start_1
    sget-object v1, Landroid/util/BoostFramework;->sFeedbackFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_20

    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_21

    move v0, v2

    :cond_20
    goto :goto_3a

    :catch_21
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    return v0
.end method

.method public varargs perfGetFeedbackExtn(ILjava/lang/String;I[I)I
    .registers 11

    const/4 v0, -0x1

    :try_start_1
    sget-object v1, Landroid/util/BoostFramework;->sFeedbackFuncExtn:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2a

    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_2b

    move v0, v2

    :cond_2a
    goto :goto_44

    :catch_2b
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44
    return v0
.end method

.method public perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, ""

    :try_start_2
    sget-object v1, Landroid/util/BoostFramework;->sPerfGetPropFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1a

    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_1c

    move-object v0, v2

    goto :goto_1b

    :cond_1a
    move-object v0, p2

    :goto_1b
    goto :goto_35

    :catch_1c
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    return-object v0
.end method

.method public perfHint(ILjava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public perfHint(ILjava/lang/String;I)I
    .registers 5

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public perfHint(ILjava/lang/String;II)I
    .registers 13

    const/4 v0, -0x1

    :try_start_1
    sget-object v1, Landroid/util/BoostFramework;->sPerfHintFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3a

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sget-object v3, Landroid/util/BoostFramework;->sPerfHintFunc:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "perfHint"

    invoke-direct {p0, v1, v2, v4}, Landroid/util/BoostFramework;->checkTime(JLjava/lang/String;)V

    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_39} :catch_3b

    move v0, v4

    :cond_3a
    goto :goto_54

    :catch_3b
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_54
    return v0
.end method

.method public perfHintAcqRel(IILjava/lang/String;)I
    .registers 13

    const/4 v0, 0x0

    new-array v8, v0, [I

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Landroid/util/BoostFramework;->perfHintAcqRel(IILjava/lang/String;III[I)I

    move-result v0

    return v0
.end method

.method public perfHintAcqRel(IILjava/lang/String;I)I
    .registers 14

    const/4 v0, 0x0

    new-array v8, v0, [I

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v8}, Landroid/util/BoostFramework;->perfHintAcqRel(IILjava/lang/String;III[I)I

    move-result v0

    return v0
.end method

.method public perfHintAcqRel(IILjava/lang/String;II)I
    .registers 15

    const/4 v0, 0x0

    new-array v8, v0, [I

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v8}, Landroid/util/BoostFramework;->perfHintAcqRel(IILjava/lang/String;III[I)I

    move-result v0

    return v0
.end method

.method public varargs perfHintAcqRel(IILjava/lang/String;III[I)I
    .registers 14

    const/4 v0, -0x1

    :try_start_1
    sget-object v1, Landroid/util/BoostFramework;->sperfHintAcqRelFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3f

    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    aput-object p7, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3e} :catch_40

    move v0, v2

    :cond_3f
    goto :goto_59

    :catch_40
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_59
    return v0
.end method

.method public perfHintRenew(IILjava/lang/String;)I
    .registers 13

    const/4 v0, 0x0

    new-array v8, v0, [I

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Landroid/util/BoostFramework;->perfHintRenew(IILjava/lang/String;III[I)I

    move-result v0

    return v0
.end method

.method public perfHintRenew(IILjava/lang/String;I)I
    .registers 14

    const/4 v0, 0x0

    new-array v8, v0, [I

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v8}, Landroid/util/BoostFramework;->perfHintRenew(IILjava/lang/String;III[I)I

    move-result v0

    return v0
.end method

.method public perfHintRenew(IILjava/lang/String;II)I
    .registers 15

    const/4 v0, 0x0

    new-array v8, v0, [I

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v8}, Landroid/util/BoostFramework;->perfHintRenew(IILjava/lang/String;III[I)I

    move-result v0

    return v0
.end method

.method public varargs perfHintRenew(IILjava/lang/String;III[I)I
    .registers 14

    const/4 v0, -0x1

    :try_start_1
    sget-object v1, Landroid/util/BoostFramework;->sperfHintRenewFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3f

    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    aput-object p7, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3e} :catch_40

    move v0, v2

    :cond_3f
    goto :goto_59

    :catch_40
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_59
    return v0
.end method

.method public perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I
    .registers 16

    const-string v0, "BoostFramework"

    const/4 v1, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    :try_start_b
    sget-object v8, Landroid/util/BoostFramework;->sIOPStart:Ljava/lang/reflect/Method;

    iget-object v9, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    aput-object p2, v10, v5

    aput-object p3, v10, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_26} :catch_28

    move v1, v9

    goto :goto_3f

    :catch_28
    move-exception v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3f
    :try_start_3f
    sget-object v8, Landroid/util/BoostFramework;->sUxIOPStart:Ljava/lang/reflect/Method;

    iget-object v9, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v6

    aput-object p2, v7, v5

    aput-object p3, v7, v4

    invoke-virtual {v8, v9, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_5a} :catch_5c

    move v1, v0

    goto :goto_73

    :catch_5c
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ux Perf Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_73
    const-string/jumbo v0, "perfIOPrefetchStart"

    invoke-direct {p0, v2, v3, v0}, Landroid/util/BoostFramework;->checkTime(JLjava/lang/String;)V

    return v1
.end method

.method public perfIOPrefetchStop()I
    .registers 7

    const/4 v0, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    :try_start_5
    sget-object v3, Landroid/util/BoostFramework;->sIOPStop:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_19

    move v0, v4

    goto :goto_32

    :catch_19
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BoostFramework"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32
    const-string/jumbo v3, "perfIOPrefetchStop"

    invoke-direct {p0, v1, v2, v3}, Landroid/util/BoostFramework;->checkTime(JLjava/lang/String;)V

    return v0
.end method

.method public varargs perfLockAcqAndRelease(IIII[I)I
    .registers 12

    const/4 v0, -0x1

    :try_start_1
    sget-object v1, Landroid/util/BoostFramework;->sAcqAndReleaseFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_35

    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_36

    move v0, v2

    :cond_35
    goto :goto_4f

    :catch_36
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4f
    return v0
.end method

.method public varargs perfLockAcquire(I[I)I
    .registers 11

    const/4 v0, -0x1

    :try_start_1
    sget-object v1, Landroid/util/BoostFramework;->sAcquireFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sget-object v3, Landroid/util/BoostFramework;->sAcquireFunc:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "perfLockAcquire"

    invoke-direct {p0, v1, v2, v4}, Landroid/util/BoostFramework;->checkTime(JLjava/lang/String;)V

    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_2d

    move v0, v4

    :cond_2c
    goto :goto_46

    :catch_2d
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_46
    return v0
.end method

.method public perfLockRelease()I
    .registers 7

    const/4 v0, -0x1

    :try_start_1
    sget-object v1, Landroid/util/BoostFramework;->sReleaseFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_22

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sget-object v3, Landroid/util/BoostFramework;->sReleaseFunc:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "perfLockRelease"

    invoke-direct {p0, v1, v2, v4}, Landroid/util/BoostFramework;->checkTime(JLjava/lang/String;)V

    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_23

    move v0, v4

    :cond_22
    goto :goto_3c

    :catch_23
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3c
    return v0
.end method

.method public perfLockReleaseHandler(I)I
    .registers 10

    const/4 v0, -0x1

    :try_start_1
    sget-object v1, Landroid/util/BoostFramework;->sReleaseHandlerFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_29

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sget-object v3, Landroid/util/BoostFramework;->sReleaseHandlerFunc:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "perfLockReleaseHandler"

    invoke-direct {p0, v1, v2, v4}, Landroid/util/BoostFramework;->checkTime(JLjava/lang/String;)V

    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_2a

    move v0, v4

    :cond_29
    goto :goto_43

    :catch_2a
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_43
    return v0
.end method

.method public perfSyncRequest(I)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Landroid/util/BoostFramework;->sPerfSyncRequest:Ljava/lang/reflect/Method;

    if-nez v1, :cond_6

    return-object v0

    :cond_6
    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1b

    move-object v0, v2

    goto :goto_34

    :catch_1b
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    return-object v0
.end method

.method public perfUXEngine_events(IILjava/lang/String;I)I
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public perfUXEngine_events(IILjava/lang/String;ILjava/lang/String;)I
    .registers 14

    const/4 v0, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    :try_start_5
    sget-object v3, Landroid/util/BoostFramework;->sUXEngineEvents:Ljava/lang/reflect/Method;

    if-nez v3, :cond_a

    return v0

    :cond_a
    iget-object v4, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    aput-object p5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_35} :catch_37

    move v0, v4

    goto :goto_50

    :catch_37
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BoostFramework"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_50
    const-string/jumbo v3, "perfUXEngine_events"

    invoke-direct {p0, v1, v2, v3}, Landroid/util/BoostFramework;->checkTime(JLjava/lang/String;)V

    return v0
.end method

.method public perfUXEngine_trigger(I)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    :try_start_5
    sget-object v3, Landroid/util/BoostFramework;->sUXEngineTrigger:Ljava/lang/reflect/Method;

    if-nez v3, :cond_a

    return-object v0

    :cond_a
    iget-object v4, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1d} :catch_1f

    move-object v0, v4

    goto :goto_38

    :catch_1f
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BoostFramework"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_38
    const-string/jumbo v3, "perfUXEngine_trigger"

    invoke-direct {p0, v1, v2, v3}, Landroid/util/BoostFramework;->checkTime(JLjava/lang/String;)V

    return-object v0
.end method
