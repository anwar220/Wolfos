# classes2.dex

.class public final synthetic Landroid/hardware/location/ContextHubTransaction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/location/ContextHubTransaction;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/location/ContextHubTransaction;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/location/ContextHubTransaction$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/location/ContextHubTransaction;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/location/ContextHubTransaction$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/location/ContextHubTransaction;

    invoke-virtual {v0}, Landroid/hardware/location/ContextHubTransaction;->lambda$setResponse$1$android-hardware-location-ContextHubTransaction()V

    return-void
.end method
