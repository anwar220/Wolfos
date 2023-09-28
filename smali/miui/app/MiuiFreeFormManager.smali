# classes4.dex

.class public Lmiui/app/MiuiFreeFormManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    }
.end annotation


# static fields
.field public static final ACTION_FREEFORM_END_RESIZE:I = 0x7

.field public static final ACTION_FREEFORM_PINED:I = 0x9

.field public static final ACTION_FREEFORM_PINED_TO_MINIFREEFORM_PINED:I = 0xf

.field public static final ACTION_FREEFORM_START_RESIZE:I = 0x6

.field public static final ACTION_FREEFORM_TO_FULLSCREEN:I = 0x3

.field public static final ACTION_FREEFORM_TO_MINIFREEFORM:I = 0x2

.field public static final ACTION_FREEFORM_UNPINED:I = 0xb

.field public static final ACTION_FREEFORM_UPDATE_CAPTION_VISIBILITY:I = 0x8

.field public static final ACTION_FULLSCREEN_TO_FREEFORM:I = 0x0

.field public static final ACTION_FULLSCREEN_TO_MINIFREEFORM:I = 0x1

.field public static final ACTION_MINIFREEFORM_PINED:I = 0xa

.field public static final ACTION_MINIFREEFORM_PINED_TO_FREEFORM_PINED:I = 0xe

.field public static final ACTION_MINIFREEFORM_TO_FREEFORM:I = 0x4

.field public static final ACTION_MINIFREEFORM_TO_FULLSCREEN:I = 0x5

.field public static final ACTION_MINI_FREEFORM_UNPINED:I = 0xc

.field public static final ACTION_REMOVE_FLOATING_PIN_WINDOW:I = 0xd

.field public static final BACKGROUND_PIN:I = 0x2

.field public static final FOREGROUND_PIN:I = 0x1

.field public static final GESTURE_WINDOWING_MODE_FREEFORM:I = 0x0

.field public static final GESTURE_WINDOWING_MODE_SMALL_FREEFORM:I = 0x1

.field public static final GESTURE_WINDOWING_MODE_UNDEFINED:I = -0x1

.field private static final IMiuiFreeFormManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lmiui/app/IMiuiFreeFormManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MiuiFreeFormManager"

.field public static final UNPIN:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/app/MiuiFreeFormManager$1;

    invoke-direct {v0}, Lmiui/app/MiuiFreeFormManager$1;-><init>()V

    sput-object v0, Lmiui/app/MiuiFreeFormManager;->IMiuiFreeFormManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static actionToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_36

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0xf
    const-string v0, "ACTION_FREEFORM_PINED_TO_MINIFREEFORM_PINED"

    return-object v0

    :pswitch_8  #0xe
    const-string v0, "ACTION_MINIFREEFORM_PINED_TO_FREEFORM_PINED"

    return-object v0

    :pswitch_b  #0xd
    const-string v0, "ACTION_REMOVE_FLOATING_PIN_WINDOW"

    return-object v0

    :pswitch_e  #0xc
    const-string v0, "ACTION_MINI_FREEFORM_UNPINED"

    return-object v0

    :pswitch_11  #0xb
    const-string v0, "ACTION_FREEFORM_UNPINED"

    return-object v0

    :pswitch_14  #0xa
    const-string v0, "ACTION_MINIFREEFORM_PINED"

    return-object v0

    :pswitch_17  #0x9
    const-string v0, "ACTION_FREEFORM_PINED"

    return-object v0

    :pswitch_1a  #0x8
    const-string v0, "ACTION_FREEFORM_UPDATE_CAPTION_VISIBILITY"

    return-object v0

    :pswitch_1d  #0x7
    const-string v0, "ACTION_FREEFORM_END_RESIZE"

    return-object v0

    :pswitch_20  #0x6
    const-string v0, "ACTION_FREEFORM_START_RESIZE"

    return-object v0

    :pswitch_23  #0x5
    const-string v0, "ACTION_MINIFREEFORM_TO_FULLSCREEN"

    return-object v0

    :pswitch_26  #0x4
    const-string v0, "ACTION_MINIFREEFORM_TO_FREEFORM"

    return-object v0

    :pswitch_29  #0x3
    const-string v0, "ACTION_FREEFORM_TO_FULLSCREEN"

    return-object v0

    :pswitch_2c  #0x2
    const-string v0, "ACTION_FREEFORM_TO_MINIFREEFORM"

    return-object v0

    :pswitch_2f  #0x1
    const-string v0, "ACTION_FULLSCREEN_TO_MINIFREEFORM"

    return-object v0

    :pswitch_32  #0x0
    const-string v0, "ACTION_FULLSCREEN_TO_FREEFORM"

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_32  #00000000
        :pswitch_2f  #00000001
        :pswitch_2c  #00000002
        :pswitch_29  #00000003
        :pswitch_26  #00000004
        :pswitch_23  #00000005
        :pswitch_20  #00000006
        :pswitch_1d  #00000007
        :pswitch_1a  #00000008
        :pswitch_17  #00000009
        :pswitch_14  #0000000a
        :pswitch_11  #0000000b
        :pswitch_e  #0000000c
        :pswitch_b  #0000000d
        :pswitch_8  #0000000e
        :pswitch_5  #0000000f
    .end packed-switch
.end method

.method public static getAllFreeFormStackInfosOnDisplay(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2b

    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->getAllFreeFormStackInfosOnDisplay(I)Ljava/util/List;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " failed getAllFreeFormStackInfosOnDisplay displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFreeFormManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_2b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAllPinedFreeFormStackInfosOnDisplay(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_32

    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->getAllPinedFreeFormStackInfosOnDisplay(I)Ljava/util/List;

    move-result-object v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_13

    return-object v1

    :cond_12
    goto :goto_2c

    :catch_13
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " failed getAllFreeFormStackInfosOnDisplay displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFreeFormManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFirstUseMiuiFreeForm()I
    .registers 3

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormManager;->getFirstUseMiuiFreeForm()I

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    return v0

    :catch_10
    move-exception v0

    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed getFirstUseMiuiFreeForm "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_1a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFirstUseTipConfirmTimes()I
    .registers 3

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormManager;->getFirstUseTipConfirmTimes()I

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    return v0

    :catch_10
    move-exception v0

    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed getFirstUseTipConfirmTimes "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_1a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFreeFormStackInfoByActivity(Landroid/app/Activity;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    .registers 5

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_48

    :try_start_7
    const-class v0, Landroid/app/Activity;

    const-string v1, "getActivityToken"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    if-eqz v2, :cond_29

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v3

    invoke-interface {v3, v2}, Lmiui/app/IMiuiFreeFormManager;->getFreeFormStackInfoByActivity(Landroid/os/IBinder;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v3
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_28} :catch_2a

    return-object v3

    :cond_29
    goto :goto_2e

    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " failed getFreeFormStackInfo view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiFreeFormManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_48
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFreeFormStackInfoByStackId(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    .registers 4

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2b

    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->getFreeFormStackInfoByStackId(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " failed getFreeFormStackInfoByStackId stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFreeFormManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_2b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFreeFormStackInfoByView(Landroid/view/View;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    .registers 7

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_50

    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lmiui/app/IMiuiFreeFormManager;->getFreeFormStackInfoByWindow(Landroid/os/IBinder;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v0

    return-object v0

    :cond_17
    const-class v2, Landroid/view/View;

    const-string v3, "getAttachedActivity"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    if-eqz v4, :cond_35

    invoke-static {v4}, Lmiui/app/MiuiFreeFormManager;->getFreeFormStackInfoByActivity(Landroid/app/Activity;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_34} :catch_36

    return-object v0

    :cond_35
    return-object v0

    :catch_36
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " failed getFreeFormStackInfo view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFreeFormManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_50
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFreeFormStackToAvoid(ILjava/lang/String;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    .registers 5

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2b

    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lmiui/app/IMiuiFreeFormManager;->getFreeFormStackToAvoid(ILjava/lang/String;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " failed getAllFreeFormStackInfosOnDisplay displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFreeFormManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_2b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMaxMiuiFreeFormStackCountForFlashBack(Ljava/lang/String;Z)I
    .registers 5

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lmiui/app/IMiuiFreeFormManager;->getMaxMiuiFreeFormStackCountForFlashBack(Ljava/lang/String;Z)I

    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed getMaxMiuiFreeFormStackCountForFlashBack "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public static getMiuiFreeformStackPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "freeform_package_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "非MIUI12小窗版本,请用MIUI13适配方案进行适配"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMiuiFreeformStackShowState(Landroid/content/Context;)I
    .registers 4

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "freeform_window_state"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "非MIUI12小窗版本,请用MIUI13适配方案进行适配"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMiuiFreeformVersion()I
    .registers 1

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    return v0

    :cond_8
    const/4 v0, 0x2

    return v0
.end method

.method private static getService()Lmiui/app/IMiuiFreeFormManager;
    .registers 2

    :try_start_0
    sget-object v0, Lmiui/app/MiuiFreeFormManager;->IMiuiFreeFormManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/IMiuiFreeFormManager;
    :try_end_8
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public static hidePinFloatingWindow(I)V
    .registers 4

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2b

    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->hidePinFloatingWindow(I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_11

    :cond_10
    goto :goto_2a

    :catch_11
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " failed hidePinFloatingWindow stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFreeFormManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void

    :cond_2b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isSupportPin()Z
    .registers 3

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1d

    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormManager;->isSupportPin()Z

    move-result v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_13

    return v1

    :cond_12
    goto :goto_1b

    :catch_13
    move-exception v0

    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed isSuppoertPin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b
    const/4 v0, 0x0

    return v0

    :cond_1d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static notifyCameraStateChanged(Ljava/lang/String;I)V
    .registers 5

    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lmiui/app/IMiuiFreeFormManager;->notifyCameraStateChanged(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_21

    :catch_8
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " failed notifyCameraStateChanged packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFreeFormManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void
.end method

.method public static openCameraInFreeForm(Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->openCameraInFreeForm(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " failed cameraOpenedInFreeForm packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFreeFormManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public static registerFreeformCallback(Lmiui/app/IFreeformCallback;)V
    .registers 3

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    if-eqz p0, :cond_15

    :try_start_9
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->registerFreeformCallback(Lmiui/app/IFreeformCallback;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_15
    :goto_15
    return-void

    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setFirstUseMiuiFreeForm(I)V
    .registers 4

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->setFirstUseMiuiFreeForm(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_17

    :catch_f
    move-exception v0

    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed setFirstUseMiuiFreeForm "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    return-void

    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setFirstUseTipConfirmTimes(I)V
    .registers 4

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->setFirstUseTipConfirmTimes(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_17

    :catch_f
    move-exception v0

    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed setFirstUseTipConfirmTimes "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    return-void

    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static trackClickSmallWindowEvent()V
    .registers 3

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormManager;->trackClickSmallWindowEvent()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_17

    :catch_f
    move-exception v0

    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed trackClickSmallWindowEvent "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    return-void

    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unPinFloatingWindow(Landroid/graphics/Rect;IFFZ)Z
    .registers 12

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_34

    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    if-eqz v0, :cond_18

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lmiui/app/IMiuiFreeFormManager;->unPinFloatingWindow(Landroid/graphics/Rect;IFFZ)Z

    move-result v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_19

    return v1

    :cond_18
    goto :goto_32

    :catch_19
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " failed getFreeFormStackInfoByStackId stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFreeFormManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32
    const/4 v0, 0x0

    return v0

    :cond_34
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unregisterFreeformCallback(Lmiui/app/IFreeformCallback;)V
    .registers 3

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    if-eqz p0, :cond_15

    :try_start_9
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->unregisterFreeformCallback(Lmiui/app/IFreeformCallback;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_15
    :goto_15
    return-void

    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static updatePinFloatingWindowPos(Landroid/graphics/Rect;I)V
    .registers 5

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2b

    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0, p0, p1}, Lmiui/app/IMiuiFreeFormManager;->updatePinFloatingWindowPos(Landroid/graphics/Rect;I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_11

    :cond_10
    goto :goto_2a

    :catch_11
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " failed getFreeFormStackInfoByStackId taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFreeFormManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void

    :cond_2b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "非MIUI13小窗版本,请用MIUI12适配方案进行适配"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
