# classes2.dex

.class public final synthetic Landroid/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/RuntimeException;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/RuntimeException;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda0;->f$0:Ljava/lang/RuntimeException;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda0;->f$0:Ljava/lang/RuntimeException;

    invoke-static {v0}, Landroid/location/provider/LocationProviderBase$Service;->lambda$setRequest$0(Ljava/lang/RuntimeException;)V

    return-void
.end method
