# classes3.dex

.class public interface abstract Landroid/service/dreams/IDreamOverlayCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/IDreamOverlayCallback$Stub;,
        Landroid/service/dreams/IDreamOverlayCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.service.dreams.IDreamOverlayCallback"


# virtual methods
.method public abstract onExitRequested()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
