# classes.dex

.class public final synthetic Landroid/app/job/JobSchedulerFrameworkInitializer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createService(Landroid/content/Context;Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1, p2}, Landroid/app/job/JobSchedulerFrameworkInitializer;->lambda$registerServiceWrappers$1(Landroid/content/Context;Landroid/os/IBinder;)Landroid/os/DeviceIdleManager;

    move-result-object p1

    return-object p1
.end method
