# classes.dex

.class public final synthetic Landroid/app/job/JobSchedulerFrameworkInitializer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createService(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Landroid/app/job/JobSchedulerFrameworkInitializer;->lambda$registerServiceWrappers$0(Landroid/os/IBinder;)Landroid/app/job/JobScheduler;

    move-result-object p1

    return-object p1
.end method
