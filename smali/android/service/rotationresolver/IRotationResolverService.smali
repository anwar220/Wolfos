# classes3.dex

.class public interface abstract Landroid/service/rotationresolver/IRotationResolverService;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/rotationresolver/IRotationResolverService$Stub;,
        Landroid/service/rotationresolver/IRotationResolverService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.service.rotationresolver.IRotationResolverService"


# virtual methods
.method public abstract resolveRotation(Landroid/service/rotationresolver/IRotationResolverCallback;Landroid/service/rotationresolver/RotationResolutionRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
