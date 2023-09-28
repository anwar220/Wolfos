# classes.dex

.class public interface abstract Landroid/app/AppOpsManager$OnOpActiveChangedListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnOpActiveChangedListener"
.end annotation


# virtual methods
.method public onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZII)V
    .registers 8

    invoke-interface {p0, p1, p2, p3, p5}, Landroid/app/AppOpsManager$OnOpActiveChangedListener;->onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public abstract onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Z)V
.end method
