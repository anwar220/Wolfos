# classes3.dex

.class public interface abstract Landroid/service/games/IGameServiceController;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/games/IGameServiceController$Stub;,
        Landroid/service/games/IGameServiceController$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.service.games.IGameServiceController"


# virtual methods
.method public abstract createGameSession(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
