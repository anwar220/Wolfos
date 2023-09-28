# classes3.dex

.class public interface abstract Landroid/view/WindowManager;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManager$LayoutParams;,
        Landroid/view/WindowManager$ScreenshotSource;,
        Landroid/view/WindowManager$ScreenshotType;,
        Landroid/view/WindowManager$KeyboardShortcutsReceiver;,
        Landroid/view/WindowManager$InvalidDisplayException;,
        Landroid/view/WindowManager$BadTokenException;,
        Landroid/view/WindowManager$DisplayImePolicy;,
        Landroid/view/WindowManager$RemoveContentMode;,
        Landroid/view/WindowManager$TransitionFlags;,
        Landroid/view/WindowManager$TransitionType;,
        Landroid/view/WindowManager$TransitionOldType;,
        Landroid/view/WindowManager$ShellRootLayer;
    }
.end annotation


# static fields
.field public static final DISPLAY_IME_POLICY_FALLBACK_DISPLAY:I = 0x1

.field public static final DISPLAY_IME_POLICY_HIDE:I = 0x2

.field public static final DISPLAY_IME_POLICY_LOCAL:I = 0x0

.field public static final DOCKED_BOTTOM:I = 0x4

.field public static final DOCKED_INVALID:I = -0x1

.field public static final DOCKED_LEFT:I = 0x1

.field public static final DOCKED_RIGHT:I = 0x3

.field public static final DOCKED_TOP:I = 0x2

.field public static final INPUT_CONSUMER_NAVIGATION:Ljava/lang/String; = "nav_input_consumer"

.field public static final INPUT_CONSUMER_PIP:Ljava/lang/String; = "pip_input_consumer"

.field public static final INPUT_CONSUMER_RECENTS_ANIMATION:Ljava/lang/String; = "recents_animation_input_consumer"

.field public static final INPUT_CONSUMER_WALLPAPER:Ljava/lang/String; = "wallpaper_input_consumer"

.field public static final PARCEL_KEY_SHORTCUTS_ARRAY:Ljava/lang/String; = "shortcuts_array"

.field public static final REMOVE_CONTENT_MODE_DESTROY:I = 0x2

.field public static final REMOVE_CONTENT_MODE_MOVE_TO_PRIMARY:I = 0x1

.field public static final REMOVE_CONTENT_MODE_UNDEFINED:I = 0x0

.field public static final SHELL_ROOT_LAYER_DIVIDER:I = 0x0

.field public static final SHELL_ROOT_LAYER_PIP:I = 0x1

.field public static final TAKE_SCREENSHOT_FULLSCREEN:I = 0x1

.field public static final TAKE_SCREENSHOT_PROVIDED_IMAGE:I = 0x3

.field public static final TAKE_SCREENSHOT_SELECTED_REGION:I = 0x2

.field public static final TRANSIT_CHANGE:I = 0x6

.field public static final TRANSIT_CLOSE:I = 0x2

.field public static final TRANSIT_FIRST_CUSTOM:I = 0xc

.field public static final TRANSIT_FLAG_APP_CRASHED:I = 0x10

.field public static final TRANSIT_FLAG_IS_RECENTS:I = 0x80

.field public static final TRANSIT_FLAG_KEYGUARD_GOING_AWAY:I = 0x100

.field public static final TRANSIT_FLAG_KEYGUARD_GOING_AWAY_NO_ANIMATION:I = 0x2

.field public static final TRANSIT_FLAG_KEYGUARD_GOING_AWAY_SUBTLE_ANIMATION:I = 0x8

.field public static final TRANSIT_FLAG_KEYGUARD_GOING_AWAY_TO_LAUNCHER_CLEAR_SNAPSHOT:I = 0x16

.field public static final TRANSIT_FLAG_KEYGUARD_GOING_AWAY_TO_SHADE:I = 0x1

.field public static final TRANSIT_FLAG_KEYGUARD_GOING_AWAY_WITH_WALLPAPER:I = 0x4

.field public static final TRANSIT_FLAG_KEYGUARD_LOCKED:I = 0x40

.field public static final TRANSIT_FLAG_OPEN_BEHIND:I = 0x20

.field public static final TRANSIT_KEYGUARD_GOING_AWAY:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TRANSIT_KEYGUARD_OCCLUDE:I = 0x8

.field public static final TRANSIT_KEYGUARD_UNOCCLUDE:I = 0x9

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_OLD_ACTIVITY_CLOSE:I = 0x7

.field public static final TRANSIT_OLD_ACTIVITY_OPEN:I = 0x6

.field public static final TRANSIT_OLD_ACTIVITY_RELAUNCH:I = 0x12

.field public static final TRANSIT_OLD_CRASHING_ACTIVITY_CLOSE:I = 0x1a

.field public static final TRANSIT_OLD_HIDE_FLOAT_WINDOW:I = 0x32

.field public static final TRANSIT_OLD_KEYGUARD_GOING_AWAY:I = 0x14

.field public static final TRANSIT_OLD_KEYGUARD_GOING_AWAY_ON_WALLPAPER:I = 0x15

.field public static final TRANSIT_OLD_KEYGUARD_OCCLUDE:I = 0x16

.field public static final TRANSIT_OLD_KEYGUARD_UNOCCLUDE:I = 0x17

.field public static final TRANSIT_OLD_NONE:I = 0x0

.field public static final TRANSIT_OLD_SHOW_FLOAT_WINDOW:I = 0x33

.field public static final TRANSIT_OLD_TASK_CHANGE_WINDOWING_MODE:I = 0x1b

.field public static final TRANSIT_OLD_TASK_CLOSE:I = 0x9

.field public static final TRANSIT_OLD_TASK_FRAGMENT_CHANGE:I = 0x1e

.field public static final TRANSIT_OLD_TASK_FRAGMENT_CLOSE:I = 0x1d

.field public static final TRANSIT_OLD_TASK_FRAGMENT_OPEN:I = 0x1c

.field public static final TRANSIT_OLD_TASK_OPEN:I = 0x8

.field public static final TRANSIT_OLD_TASK_OPEN_BEHIND:I = 0x10

.field public static final TRANSIT_OLD_TASK_TO_BACK:I = 0xb

.field public static final TRANSIT_OLD_TASK_TO_FRONT:I = 0xa

.field public static final TRANSIT_OLD_TRANSLUCENT_ACTIVITY_CLOSE:I = 0x19

.field public static final TRANSIT_OLD_TRANSLUCENT_ACTIVITY_OPEN:I = 0x18

.field public static final TRANSIT_OLD_UNSET:I = -0x1

.field public static final TRANSIT_OLD_WALLPAPER_CLOSE:I = 0xc

.field public static final TRANSIT_OLD_WALLPAPER_INTRA_CLOSE:I = 0xf

.field public static final TRANSIT_OLD_WALLPAPER_INTRA_OPEN:I = 0xe

.field public static final TRANSIT_OLD_WALLPAPER_OPEN:I = 0xd

.field public static final TRANSIT_OPEN:I = 0x1

.field public static final TRANSIT_PIP:I = 0xa

.field public static final TRANSIT_RELAUNCH:I = 0x5

.field public static final TRANSIT_TO_BACK:I = 0x4

.field public static final TRANSIT_TO_FRONT:I = 0x3

.field public static final TRANSIT_WAKE:I = 0xb


# direct methods
.method public static transitTypeToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_5e

    const/16 v0, 0xc

    if-le p0, v0, :cond_44

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FIRST_CUSTOM+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p0, -0xc

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1d  #0xc
    const-string v0, "FIRST_CUSTOM"

    return-object v0

    :pswitch_20  #0xb
    const-string v0, "WAKE"

    return-object v0

    :pswitch_23  #0xa
    const-string v0, "PIP"

    return-object v0

    :pswitch_26  #0x9
    const-string v0, "KEYGUARD_UNOCCLUDE"

    return-object v0

    :pswitch_29  #0x8
    const-string v0, "KEYGUARD_OCCLUDE"

    return-object v0

    :pswitch_2c  #0x7
    const-string v0, "KEYGUARD_GOING_AWAY"

    return-object v0

    :pswitch_2f  #0x6
    const-string v0, "CHANGE"

    return-object v0

    :pswitch_32  #0x5
    const-string v0, "RELAUNCH"

    return-object v0

    :pswitch_35  #0x4
    const-string v0, "TO_BACK"

    return-object v0

    :pswitch_38  #0x3
    const-string v0, "TO_FRONT"

    return-object v0

    :pswitch_3b  #0x2
    const-string v0, "CLOSE"

    return-object v0

    :pswitch_3e  #0x1
    const-string v0, "OPEN"

    return-object v0

    :pswitch_41  #0x0
    const-string v0, "NONE"

    return-object v0

    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_41  #00000000
        :pswitch_3e  #00000001
        :pswitch_3b  #00000002
        :pswitch_38  #00000003
        :pswitch_35  #00000004
        :pswitch_32  #00000005
        :pswitch_2f  #00000006
        :pswitch_2c  #00000007
        :pswitch_29  #00000008
        :pswitch_26  #00000009
        :pswitch_23  #0000000a
        :pswitch_20  #0000000b
        :pswitch_1d  #0000000c
    .end packed-switch
.end method


# virtual methods
.method public addCrossWindowBlurEnabledListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract getCurrentImeTouchRegion()Landroid/graphics/Region;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public getCurrentWindowMetrics()Landroid/view/WindowMetrics;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract getDefaultDisplay()Landroid/view/Display;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getDisplayImePolicy(I)I
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public getMaximumWindowMetrics()Landroid/view/WindowMetrics;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPossibleMaximumWindowMetrics(I)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/view/WindowMetrics;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public holdLock(Landroid/os/IBinder;I)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isCrossWindowBlurEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isTaskSnapshotSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public registerTaskFpsCallback(ILjava/util/concurrent/Executor;Landroid/window/TaskFpsCallback;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method

.method public removeCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract removeViewImmediate(Landroid/view/View;)V
.end method

.method public abstract requestAppKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V
.end method

.method public setDisplayImePolicy(II)V
    .registers 3

    return-void
.end method

.method public setShouldShowSystemDecors(IZ)V
    .registers 3

    return-void
.end method

.method public setShouldShowWithInsecureKeyguard(IZ)V
    .registers 3

    return-void
.end method

.method public shouldShowSystemDecors(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public snapshotTaskForRecents(I)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public unregisterTaskFpsCallback(Landroid/window/TaskFpsCallback;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method
