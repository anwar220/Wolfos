# classes.dex

.class public Landroid/drm/DrmStore$Playback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Playback"
.end annotation


# static fields
.field public static final PAUSE:I = 0x2

.field public static final RESUME:I = 0x3

.field public static final START:I = 0x0

.field public static final STOP:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isValid(I)Z
    .registers 2

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_8

    goto :goto_6

    :pswitch_5  #0x0, 0x1, 0x2, 0x3
    const/4 v0, 0x1

    :goto_6
    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5  #00000000
        :pswitch_5  #00000001
        :pswitch_5  #00000002
        :pswitch_5  #00000003
    .end packed-switch
.end method
