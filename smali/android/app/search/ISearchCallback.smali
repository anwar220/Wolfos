# classes.dex

.class public interface abstract Landroid/app/search/ISearchCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/search/ISearchCallback$Stub;,
        Landroid/app/search/ISearchCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.search.ISearchCallback"


# virtual methods
.method public abstract onResult(Landroid/content/pm/ParceledListSlice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
