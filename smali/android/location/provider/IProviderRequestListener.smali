# classes2.dex

.class public interface abstract Landroid/location/provider/IProviderRequestListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/provider/IProviderRequestListener$Stub;,
        Landroid/location/provider/IProviderRequestListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.location.provider.IProviderRequestListener"


# virtual methods
.method public abstract onProviderRequestChanged(Ljava/lang/String;Landroid/location/provider/ProviderRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
