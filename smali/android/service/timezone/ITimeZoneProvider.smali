# classes3.dex

.class public interface abstract Landroid/service/timezone/ITimeZoneProvider;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/timezone/ITimeZoneProvider$Stub;,
        Landroid/service/timezone/ITimeZoneProvider$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.service.timezone.ITimeZoneProvider"


# virtual methods
.method public abstract startUpdates(Landroid/service/timezone/ITimeZoneProviderManager;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopUpdates()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
