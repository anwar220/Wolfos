# classes.dex

.class public interface abstract Landroid/app/AppOpsManager$OnOpStartedListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnOpStartedListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$OnOpStartedListener$StartedType;
    }
.end annotation


# static fields
.field public static final START_TYPE_FAILED:I = 0x0

.field public static final START_TYPE_RESUMED:I = 0x2

.field public static final START_TYPE_STARTED:I = 0x1


# virtual methods
.method public abstract onOpStarted(IILjava/lang/String;Ljava/lang/String;II)V
.end method

.method public onOpStarted(IILjava/lang/String;Ljava/lang/String;IIIII)V
    .registers 11

    const/4 v0, 0x2

    if-eq p7, v0, :cond_6

    invoke-interface/range {p0 .. p6}, Landroid/app/AppOpsManager$OnOpStartedListener;->onOpStarted(IILjava/lang/String;Ljava/lang/String;II)V

    :cond_6
    return-void
.end method
