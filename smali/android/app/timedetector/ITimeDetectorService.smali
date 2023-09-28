# classes.dex

.class public interface abstract Landroid/app/timedetector/ITimeDetectorService;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timedetector/ITimeDetectorService$Stub;,
        Landroid/app/timedetector/ITimeDetectorService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.timedetector.ITimeDetectorService"


# virtual methods
.method public abstract getCapabilitiesAndConfig()Landroid/app/time/TimeCapabilitiesAndConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract suggestExternalTime(Landroid/app/time/ExternalTimeSuggestion;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract suggestGnssTime(Landroid/app/timedetector/GnssTimeSuggestion;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract suggestNetworkTime(Landroid/app/timedetector/NetworkTimeSuggestion;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateConfiguration(Landroid/app/time/TimeConfiguration;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
