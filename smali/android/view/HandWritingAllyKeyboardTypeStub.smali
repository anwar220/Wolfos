# classes3.dex

.class public interface abstract Landroid/view/HandWritingAllyKeyboardTypeStub;
.super Ljava/lang/Object;


# static fields
.field public static final GESTURE_TYPE_ACCESSIBILITY_TYPE:Ljava/lang/String; = "GESTURE_TYPE_ACCESSIBILITY_TYPE"

.field public static final GESTURE_TYPE_ACCESSIBILITY_TYPE_MENU_ACTION_NEXT:I = 0x3

.field public static final GESTURE_TYPE_ACCESSIBILITY_TYPE_MENU_CLICK:I = 0x2

.field public static final GESTURE_TYPE_ACCESSIBILITY_TYPE_STYLUS_MOVE:I = 0x1


# direct methods
.method public static getInstance()Landroid/view/HandWritingAllyKeyboardTypeStub;
    .registers 1

    const-class v0, Landroid/view/HandWritingAllyKeyboardTypeStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/HandWritingAllyKeyboardTypeStub;

    return-object v0
.end method


# virtual methods
.method public recordHandWritingKeyboardType(Landroid/view/ViewRootImpl;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method
