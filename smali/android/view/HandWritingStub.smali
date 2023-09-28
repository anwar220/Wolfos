# classes3.dex

.class public interface abstract Landroid/view/HandWritingStub;
.super Ljava/lang/Object;


# static fields
.field public static final HAND_WRITING_KEYBOARD_TYPE_NORMAL:I = 0x1

.field public static final HAND_WRITING_KEYBOARD_TYPE_STYLUS:I = 0x2


# direct methods
.method public static newInstance()Landroid/view/HandWritingStub;
    .registers 1

    const-class v0, Landroid/view/HandWritingStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/HandWritingStub;

    return-object v0
.end method


# virtual methods
.method public getCurrentKeyboardType()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public handleBlackListSituation(Landroid/view/KeyEvent;)V
    .registers 2

    return-void
.end method

.method public isKeyboardTypeChanged()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public recordCustomToolType(Landroid/view/InputEvent;)V
    .registers 2

    return-void
.end method

.method public refreshLastKeyboardType()V
    .registers 1

    return-void
.end method

.method public setCurrentKeyboardType(I)V
    .registers 2

    return-void
.end method
