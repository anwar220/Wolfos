# classes4.dex

.class public interface abstract Lcom/android/server/AppStateTracker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AppStateTracker"


# virtual methods
.method public abstract addBackgroundRestrictedAppListener(Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;)V
.end method

.method public abstract isAppBackgroundRestricted(ILjava/lang/String;)Z
.end method
