# classes.dex

.class public interface abstract Landroid/app/blob/IBlobCommitCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/blob/IBlobCommitCallback$Stub;,
        Landroid/app/blob/IBlobCommitCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.blob.IBlobCommitCallback"


# virtual methods
.method public abstract onResult(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
