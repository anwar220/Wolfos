# classes.dex

.class public final synthetic Landroid/app/job/JobSchedulerFrameworkInitializer$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createService(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Landroid/os/PowerExemptionManager;

    invoke-direct {v0, p1}, Landroid/os/PowerExemptionManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
