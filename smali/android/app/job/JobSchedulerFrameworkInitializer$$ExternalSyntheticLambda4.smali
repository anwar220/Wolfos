# classes.dex

.class public final synthetic Landroid/app/job/JobSchedulerFrameworkInitializer$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createService()Ljava/lang/Object;
    .registers 2

    new-instance v0, Landroid/app/tare/EconomyManager;

    invoke-direct {v0}, Landroid/app/tare/EconomyManager;-><init>()V

    return-object v0
.end method
