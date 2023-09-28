# classes2.dex

.class public abstract Landroid/hardware/lights/LightsManager$LightsSession;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/lights/LightsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LightsSession"
.end annotation


# instance fields
.field private final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/lights/LightsManager$LightsSession;->mToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public getToken()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/hardware/lights/LightsManager$LightsSession;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public abstract requestLights(Landroid/hardware/lights/LightsRequest;)V
.end method
