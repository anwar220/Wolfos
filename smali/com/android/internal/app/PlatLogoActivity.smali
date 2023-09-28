# classes4.dex

.class public Lcom/android/internal/app/PlatLogoActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;,
        Lcom/android/internal/app/PlatLogoActivity$Bubble;,
        Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;
    }
.end annotation


# static fields
.field private static final EMOJI_SETS:[[Ljava/lang/String;

.field private static final S_EGG_UNLOCK_SETTING:Ljava/lang/String; = "egg_mode_s"

.field private static final TAG:Ljava/lang/String; = "PlatLogoActivity"

.field static final TOUCH_STATS:Ljava/lang/String; = "touch.stats"


# instance fields
.field private mBg:Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;

.field private mClock:Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;

.field private mLogo:Landroid/widget/ImageView;

.field mPressureMax:D

.field mPressureMin:D


# direct methods
.method static bridge synthetic -$$Nest$mlaunchNextStage(Lcom/android/internal/app/PlatLogoActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/PlatLogoActivity;->launchNextStage(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmeasureTouchPressure(Lcom/android/internal/app/PlatLogoActivity;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/PlatLogoActivity;->measureTouchPressure(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetEMOJI_SETS()[[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/app/PlatLogoActivity;->EMOJI_SETS:[[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 56

    const/16 v0, 0xe

    new-array v0, v0, [[Ljava/lang/String;

    const-string/jumbo v1, "\ud83c\udf47"

    const-string/jumbo v2, "\ud83c\udf48"

    const-string/jumbo v3, "\ud83c\udf49"

    const-string/jumbo v4, "\ud83c\udf4a"

    const-string/jumbo v5, "\ud83c\udf4b"

    const-string/jumbo v6, "\ud83c\udf4c"

    const-string/jumbo v7, "\ud83c\udf4d"

    const-string/jumbo v8, "\ud83e\udd6d"

    const-string/jumbo v9, "\ud83c\udf4e"

    const-string/jumbo v10, "\ud83c\udf4f"

    const-string/jumbo v11, "\ud83c\udf50"

    const-string/jumbo v12, "\ud83c\udf51"

    const-string/jumbo v13, "\ud83c\udf52"

    const-string/jumbo v14, "\ud83c\udf53"

    const-string/jumbo v15, "\ud83e\uded0"

    const-string/jumbo v16, "\ud83e\udd5d"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v3, "\ud83d\ude3a"

    const-string/jumbo v4, "\ud83d\ude38"

    const-string/jumbo v5, "\ud83d\ude39"

    const-string/jumbo v6, "\ud83d\ude3b"

    const-string/jumbo v7, "\ud83d\ude3c"

    const-string/jumbo v8, "\ud83d\ude3d"

    const-string/jumbo v9, "\ud83d\ude40"

    const-string/jumbo v10, "\ud83d\ude3f"

    const-string/jumbo v11, "\ud83d\ude3e"

    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v3, "\ud83d\ude00"

    const-string/jumbo v4, "\ud83d\ude03"

    const-string/jumbo v5, "\ud83d\ude04"

    const-string/jumbo v6, "\ud83d\ude01"

    const-string/jumbo v7, "\ud83d\ude06"

    const-string/jumbo v8, "\ud83d\ude05"

    const-string/jumbo v9, "\ud83e\udd23"

    const-string/jumbo v10, "\ud83d\ude02"

    const-string/jumbo v11, "\ud83d\ude42"

    const-string/jumbo v12, "\ud83d\ude43"

    const-string/jumbo v13, "\ud83e\udee0"

    const-string/jumbo v14, "\ud83d\ude09"

    const-string/jumbo v15, "\ud83d\ude0a"

    const-string/jumbo v16, "\ud83d\ude07"

    const-string/jumbo v17, "\ud83e\udd70"

    const-string/jumbo v18, "\ud83d\ude0d"

    const-string/jumbo v19, "\ud83e\udd29"

    const-string/jumbo v20, "\ud83d\ude18"

    const-string/jumbo v21, "\ud83d\ude17"

    const-string/jumbo v22, "☺️"

    const-string/jumbo v23, "\ud83d\ude1a"

    const-string/jumbo v24, "\ud83d\ude19"

    const-string/jumbo v25, "\ud83e\udd72"

    const-string/jumbo v26, "\ud83d\ude0b"

    const-string/jumbo v27, "\ud83d\ude1b"

    const-string/jumbo v28, "\ud83d\ude1c"

    const-string/jumbo v29, "\ud83e\udd2a"

    const-string/jumbo v30, "\ud83d\ude1d"

    const-string/jumbo v31, "\ud83e\udd11"

    const-string/jumbo v32, "\ud83e\udd17"

    const-string/jumbo v33, "\ud83e\udd2d"

    const-string/jumbo v34, "\ud83e\udee2"

    const-string/jumbo v35, "\ud83e\udee3"

    const-string/jumbo v36, "\ud83e\udd2b"

    const-string/jumbo v37, "\ud83e\udd14"

    const-string/jumbo v38, "\ud83e\udee1"

    const-string/jumbo v39, "\ud83e\udd10"

    const-string/jumbo v40, "\ud83e\udd28"

    const-string/jumbo v41, "\ud83d\ude10"

    const-string/jumbo v42, "\ud83d\ude11"

    const-string/jumbo v43, "\ud83d\ude36"

    const-string/jumbo v44, "\ud83e\udee5"

    const-string/jumbo v45, "\ud83d\ude0f"

    const-string/jumbo v46, "\ud83d\ude12"

    const-string/jumbo v47, "\ud83d\ude44"

    const-string/jumbo v48, "\ud83d\ude2c"

    const-string/jumbo v49, "\ud83e\udd25"

    const-string/jumbo v50, "\ud83d\ude0c"

    const-string/jumbo v51, "\ud83d\ude14"

    const-string/jumbo v52, "\ud83d\ude2a"

    const-string/jumbo v53, "\ud83e\udd24"

    const-string/jumbo v54, "\ud83d\ude34"

    const-string/jumbo v55, "\ud83d\ude37"

    filled-new-array/range {v3 .. v55}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v3, "\ud83e\udd29"

    const-string/jumbo v4, "\ud83d\ude0d"

    const-string/jumbo v5, "\ud83e\udd70"

    const-string/jumbo v6, "\ud83d\ude18"

    const-string/jumbo v7, "\ud83e\udd73"

    const-string/jumbo v8, "\ud83e\udd72"

    const-string/jumbo v9, "\ud83e\udd79"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "\ud83e\udee0"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v3, "\ud83d\udc98"

    const-string/jumbo v4, "\ud83d\udc9d"

    const-string/jumbo v5, "\ud83d\udc96"

    const-string/jumbo v6, "\ud83d\udc97"

    const-string/jumbo v7, "\ud83d\udc93"

    const-string/jumbo v8, "\ud83d\udc9e"

    const-string/jumbo v9, "\ud83d\udc95"

    const-string/jumbo v10, "❣"

    const-string/jumbo v11, "\ud83d\udc94"

    const-string/jumbo v12, "❤"

    const-string/jumbo v13, "\ud83e\udde1"

    const-string/jumbo v14, "\ud83d\udc9b"

    const-string/jumbo v15, "\ud83d\udc9a"

    const-string/jumbo v16, "\ud83d\udc99"

    const-string/jumbo v17, "\ud83d\udc9c"

    const-string/jumbo v18, "\ud83e\udd0e"

    const-string/jumbo v19, "\ud83d\udda4"

    const-string/jumbo v20, "\ud83e\udd0d"

    filled-new-array/range {v3 .. v20}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v3, "\ud83d\udc7d"

    const-string/jumbo v4, "\ud83d\udef8"

    const-string/jumbo v5, "✨"

    const-string/jumbo v6, "\ud83c\udf1f"

    const-string/jumbo v7, "\ud83d\udcab"

    const-string/jumbo v8, "\ud83d\ude80"

    const-string/jumbo v9, "\ud83e\ude90"

    const-string/jumbo v10, "\ud83c\udf19"

    const-string/jumbo v11, "⭐"

    const-string/jumbo v12, "\ud83c\udf0d"

    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v3, "\ud83c\udf11"

    const-string/jumbo v4, "\ud83c\udf12"

    const-string/jumbo v5, "\ud83c\udf13"

    const-string/jumbo v6, "\ud83c\udf14"

    const-string/jumbo v7, "\ud83c\udf15"

    const-string/jumbo v8, "\ud83c\udf16"

    const-string/jumbo v9, "\ud83c\udf17"

    const-string/jumbo v10, "\ud83c\udf18"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v3, "\ud83d\udc19"

    const-string/jumbo v4, "\ud83e\udeb8"

    const-string/jumbo v5, "\ud83e\udd91"

    const-string/jumbo v6, "\ud83e\udd80"

    const-string/jumbo v7, "\ud83e\udd90"

    const-string/jumbo v8, "\ud83d\udc21"

    const-string/jumbo v9, "\ud83e\udd9e"

    const-string/jumbo v10, "\ud83d\udc20"

    const-string/jumbo v11, "\ud83d\udc1f"

    const-string/jumbo v12, "\ud83d\udc33"

    const-string/jumbo v13, "\ud83d\udc0b"

    const-string/jumbo v14, "\ud83d\udc2c"

    const-string/jumbo v15, "\ud83e\udee7"

    const-string/jumbo v16, "\ud83c\udf0a"

    const-string/jumbo v17, "\ud83e\udd88"

    filled-new-array/range {v3 .. v17}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "\ud83d\ude48"

    const-string/jumbo v2, "\ud83d\ude49"

    const-string/jumbo v3, "\ud83d\ude4a"

    const-string/jumbo v4, "\ud83d\udc35"

    const-string/jumbo v5, "\ud83d\udc12"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v3, "♈"

    const-string/jumbo v4, "♉"

    const-string/jumbo v5, "♊"

    const-string/jumbo v6, "♋"

    const-string/jumbo v7, "♌"

    const-string/jumbo v8, "♍"

    const-string/jumbo v9, "♎"

    const-string/jumbo v10, "♏"

    const-string/jumbo v11, "♐"

    const-string/jumbo v12, "♑"

    const-string/jumbo v13, "♒"

    const-string/jumbo v14, "♓"

    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v3, "\ud83d\udd5b"

    const-string/jumbo v4, "\ud83d\udd67"

    const-string/jumbo v5, "\ud83d\udd50"

    const-string/jumbo v6, "\ud83d\udd5c"

    const-string/jumbo v7, "\ud83d\udd51"

    const-string/jumbo v8, "\ud83d\udd5d"

    const-string/jumbo v9, "\ud83d\udd52"

    const-string/jumbo v10, "\ud83d\udd5e"

    const-string/jumbo v11, "\ud83d\udd53"

    const-string/jumbo v12, "\ud83d\udd5f"

    const-string/jumbo v13, "\ud83d\udd54"

    const-string/jumbo v14, "\ud83d\udd60"

    const-string/jumbo v15, "\ud83d\udd55"

    const-string/jumbo v16, "\ud83d\udd61"

    const-string/jumbo v17, "\ud83d\udd56"

    const-string/jumbo v18, "\ud83d\udd62"

    const-string/jumbo v19, "\ud83d\udd57"

    const-string/jumbo v20, "\ud83d\udd63"

    const-string/jumbo v21, "\ud83d\udd58"

    const-string/jumbo v22, "\ud83d\udd64"

    const-string/jumbo v23, "\ud83d\udd59"

    const-string/jumbo v24, "\ud83d\udd65"

    const-string/jumbo v25, "\ud83d\udd5a"

    const-string/jumbo v26, "\ud83d\udd66"

    filled-new-array/range {v3 .. v26}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v3, "\ud83c\udf3a"

    const-string/jumbo v4, "\ud83c\udf38"

    const-string/jumbo v5, "\ud83d\udcae"

    const-string/jumbo v6, "\ud83c\udff5️"

    const-string/jumbo v7, "\ud83c\udf3c"

    const-string/jumbo v8, "\ud83c\udf3f"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "\ud83d\udc22"

    const-string/jumbo v2, "✨"

    const-string/jumbo v3, "\ud83c\udf1f"

    const-string/jumbo v4, "\ud83d\udc51"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/app/PlatLogoActivity;->EMOJI_SETS:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    iput-wide v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    return-void
.end method

.method private launchNextStage(Z)V
    .registers 7

    const-string v0, "PlatLogoActivity"

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mClock:Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;

    invoke-virtual {v1}, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v3, 0x3f000000  # 0.5f

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v4, Lcom/android/internal/app/PlatLogoActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/internal/app/PlatLogoActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/PlatLogoActivity;)V

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mLogo:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mLogo:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/internal/app/PlatLogoActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/internal/app/PlatLogoActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/PlatLogoActivity;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    :try_start_68
    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->shouldWriteSettings()Z

    move-result v2

    if-eqz v2, :cond_95

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saving egg unlock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->syncTouchPressure()V

    const-string v2, "egg_mode_s"

    if-eqz p1, :cond_8e

    const-wide/16 v3, 0x0

    goto :goto_92

    :cond_8e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :goto_92
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_95
    .catch Ljava/lang/RuntimeException; {:try_start_68 .. :try_end_95} :catch_96

    :cond_95
    goto :goto_9c

    :catch_96
    move-exception v2

    const-string v3, "Can\'t write settings"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9c
    :try_start_9c
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.internal.category.PLATLOGO"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/PlatLogoActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_b3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9c .. :try_end_b3} :catch_b4

    goto :goto_bc

    :catch_b4
    move-exception v0

    const-string v2, "com.android.internal.app.PlatLogoActivity"

    const-string v3, "No more eggs."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_bc
    return-void
.end method

.method private measureTouchPressure(Landroid/view/MotionEvent;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_30

    :pswitch_b  #0x1
    goto :goto_2e

    :pswitch_c  #0x2
    float-to-double v1, v0

    iget-wide v3, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_16

    float-to-double v1, v0

    iput-wide v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    :cond_16
    float-to-double v1, v0

    iget-wide v3, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2e

    float-to-double v1, v0

    iput-wide v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    goto :goto_2e

    :pswitch_21  #0x0
    iget-wide v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2e

    float-to-double v1, v0

    iput-wide v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    iput-wide v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    :cond_2e
    :goto_2e
    return-void

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_21  #00000000
        :pswitch_b  #00000001
        :pswitch_c  #00000002
    .end packed-switch
.end method

.method private shouldWriteSettings()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private syncTouchPressure()V
    .registers 10

    const-string/jumbo v0, "touch.stats"

    const-string/jumbo v1, "max"

    const-string/jumbo v2, "min"

    :try_start_9
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    if-eqz v3, :cond_17

    move-object v5, v3

    goto :goto_1a

    :cond_17
    const-string/jumbo v5, "{}"

    :goto_1a
    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    iget-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    :cond_2f
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    iget-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    :cond_41
    iget-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_64

    iget-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    invoke-virtual {v4, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    invoke-virtual {v4, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->shouldWriteSettings()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_64} :catch_65

    :cond_64
    goto :goto_6d

    :catch_65
    move-exception v0

    const-string v1, "com.android.internal.app.PlatLogoActivity"

    const-string v2, "Can\'t write touch settings"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6d
    return-void
.end method


# virtual methods
.method synthetic lambda$launchNextStage$0$com-android-internal-app-PlatLogoActivity()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mClock:Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$launchNextStage$1$com-android-internal-app-PlatLogoActivity()V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mBg:Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_1e

    const-string/jumbo v2, "level"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_1e
    .array-data 4
        0x0
        0x2710
    .end array-data
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    :cond_1b
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;

    invoke-direct {v3, p0, p0}, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;-><init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/app/PlatLogoActivity;->mClock:Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v4, v3, Landroid/util/DisplayMetrics;->density:F

    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-double v6, v5

    const-wide/high16 v8, 0x3fe8000000000000L  # 0.75

    mul-double/2addr v6, v8

    double-to-int v6, v6

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x11

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v8, p0, Lcom/android/internal/app/PlatLogoActivity;->mClock:Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;

    invoke-virtual {v2, v8, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/internal/app/PlatLogoActivity;->mLogo:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/internal/app/PlatLogoActivity;->mLogo:Landroid/widget/ImageView;

    const v9, 0x10806bb

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v8, p0, Lcom/android/internal/app/PlatLogoActivity;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v2, v8, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;

    invoke-direct {v8, p0}, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;-><init>(Lcom/android/internal/app/PlatLogoActivity;)V

    iput-object v8, p0, Lcom/android/internal/app/PlatLogoActivity;->mBg:Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;

    invoke-virtual {v8, v1}, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->setLevel(I)Z

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mBg:Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;

    div-int/lit8 v8, v6, 0x2

    int-to-float v8, v8

    iput v8, v1, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->avoid:F

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mBg:Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;

    const/high16 v8, 0x3f000000  # 0.5f

    mul-float/2addr v8, v4

    iput v8, v1, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->padding:F

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mBg:Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;

    const/high16 v8, 0x3f800000  # 1.0f

    mul-float/2addr v8, v4

    iput v8, v1, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->minR:F

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mBg:Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mBg:Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/app/PlatLogoActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onStart()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->syncTouchPressure()V

    return-void
.end method

.method public onStop()V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->syncTouchPressure()V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
