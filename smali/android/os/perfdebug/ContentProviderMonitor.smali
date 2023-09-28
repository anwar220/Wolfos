# classes3.dex

.class public Landroid/os/perfdebug/ContentProviderMonitor;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newContentProviderMonitor()Landroid/os/perfdebug/ContentProviderMonitor;
    .registers 1

    const-class v0, Landroid/os/perfdebug/ContentProviderMonitor;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/perfdebug/ContentProviderMonitor;

    return-object v0
.end method


# virtual methods
.method public monitorCreateBegin()V
    .registers 1

    return-void
.end method

.method public monitorCreateEnd(Landroid/content/pm/ProviderInfo;)V
    .registers 2

    return-void
.end method
