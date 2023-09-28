# classes4.dex

.class public Lcom/android/internal/app/ChooserActivityStub;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/app/ChooserActivityStub;
    .registers 1

    const-class v0, Lcom/android/internal/app/ChooserActivityStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivityStub;

    return-object v0
.end method

.method public static newInstance()Lcom/android/internal/app/ChooserActivityStub;
    .registers 1

    const-class v0, Lcom/android/internal/app/ChooserActivityStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivityStub;

    return-object v0
.end method


# virtual methods
.method public canBindService(Landroid/content/Context;Landroid/content/Intent;I)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public canInterceptByMiAppStore(Landroid/app/Activity;Landroid/content/Intent;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public dealWithActonViewIntent(Landroid/content/Intent;[Landroid/content/Intent;)V
    .registers 3

    return-void
.end method

.method public isInterceptedByMiAppStore(Landroid/app/Activity;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public notAllowHomeLaunchedAgain(Landroid/content/Intent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public startInterceptByMiAppStore(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/Object;Lcom/android/internal/app/ResolverRankerServiceResolverComparator;I)V
    .registers 6

    return-void
.end method

.method public stopInterceptByMiAppStore(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
