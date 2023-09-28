# classes2.dex

.class public interface abstract Landroid/location/IGnssNmeaListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGnssNmeaListener$Stub;,
        Landroid/location/IGnssNmeaListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.location.IGnssNmeaListener"


# virtual methods
.method public abstract onNmeaReceived(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
