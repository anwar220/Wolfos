# classes3.dex

.class public abstract Landroid/service/dreams/DreamManagerInternal;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getActiveDreamComponent(Z)Landroid/content/ComponentName;
.end method

.method public abstract isDreaming()Z
.end method

.method public abstract startDream(Z)V
.end method

.method public abstract stopDream(Z)V
.end method
