# classes2.dex

.class public interface abstract Landroid/location/IGeofenceProvider;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGeofenceProvider$Stub;,
        Landroid/location/IGeofenceProvider$Default;
    }
.end annotation


# virtual methods
.method public abstract setGeofenceHardware(Landroid/hardware/location/IGeofenceHardware;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
