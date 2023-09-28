# classes3.dex

.class public Landroid/os/perfdebug/PerfDebugMonitor;
.super Ljava/lang/Object;


# static fields
.field public static final DEBUG:Z = false

.field public static final THRESHOLD_BOOST_FRAMEWORK_OPER_MS:I = 0x14

.field public static final THRESHOLD_FILE_SYNC_MS:I = 0x64

.field public static final THRESHOLD_QUEUED_WORK_OPER_MS:I = 0x64


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Landroid/os/perfdebug/PerfDebugMonitor;
    .registers 1

    const-class v0, Landroid/os/perfdebug/PerfDebugMonitor;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/perfdebug/PerfDebugMonitor;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .registers 4

    return-void
.end method

.method public isEnableTraceBinder()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public prepareMonitor()V
    .registers 1

    return-void
.end method
