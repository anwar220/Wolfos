# classes2.dex

.class public final Landroid/media/AudioFocusRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioFocusRequest$Builder;
    }
.end annotation


# static fields
.field private static final FOCUS_DEFAULT_ATTR:Landroid/media/AudioAttributes;

.field public static final KEY_ACCESSIBILITY_FORCE_FOCUS_DUCKING:Ljava/lang/String; = "a11y_force_ducking"


# instance fields
.field private final mAttr:Landroid/media/AudioAttributes;

.field private final mFlags:I

.field private final mFocusGain:I

.field private final mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final mListenerHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAttr(Landroid/media/AudioFocusRequest;)Landroid/media/AudioAttributes;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioFocusRequest;->mAttr:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFocusGain(Landroid/media/AudioFocusRequest;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioFocusRequest;->mFocusGain:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFocusListener(Landroid/media/AudioFocusRequest;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioFocusRequest;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListenerHandler(Landroid/media/AudioFocusRequest;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioFocusRequest;->mListenerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetFOCUS_DEFAULT_ATTR()Landroid/media/AudioAttributes;
    .registers 1

    sget-object v0, Landroid/media/AudioFocusRequest;->FOCUS_DEFAULT_ATTR:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Landroid/media/AudioFocusRequest;->FOCUS_DEFAULT_ATTR:Landroid/media/AudioAttributes;

    return-void
.end method

.method private constructor <init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Landroid/media/AudioAttributes;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioFocusRequest;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-object p2, p0, Landroid/media/AudioFocusRequest;->mListenerHandler:Landroid/os/Handler;

    iput p4, p0, Landroid/media/AudioFocusRequest;->mFocusGain:I

    iput-object p3, p0, Landroid/media/AudioFocusRequest;->mAttr:Landroid/media/AudioAttributes;

    iput p5, p0, Landroid/media/AudioFocusRequest;->mFlags:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Landroid/media/AudioAttributes;IILandroid/media/AudioFocusRequest-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/media/AudioFocusRequest;-><init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Landroid/media/AudioAttributes;II)V

    return-void
.end method

.method static final isValidFocusGain(I)Z
    .registers 2

    packed-switch p0, :pswitch_data_8

    const/4 v0, 0x0

    return v0

    :pswitch_5  #0x1, 0x2, 0x3, 0x4
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5  #00000001
        :pswitch_5  #00000002
        :pswitch_5  #00000003
        :pswitch_5  #00000004
    .end packed-switch
.end method


# virtual methods
.method public acceptsDelayedFocusGain()Z
    .registers 3

    iget v0, p0, Landroid/media/AudioFocusRequest;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioFocusRequest;->mAttr:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method getFlags()I
    .registers 2

    iget v0, p0, Landroid/media/AudioFocusRequest;->mFlags:I

    return v0
.end method

.method public getFocusGain()I
    .registers 2

    iget v0, p0, Landroid/media/AudioFocusRequest;->mFocusGain:I

    return v0
.end method

.method public getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioFocusRequest;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method public getOnAudioFocusChangeListenerHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioFocusRequest;->mListenerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public locksFocus()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/media/AudioFocusRequest;->mFlags:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public willPauseWhenDucked()Z
    .registers 3

    iget v0, p0, Landroid/media/AudioFocusRequest;->mFlags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method