# classes.dex

.class Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RippleAnimationSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimationProperties"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FloatType:",
        "Ljava/lang/Object;",
        "PaintType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mColor:I

.field private mMaxRadius:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFloatType;"
        }
    .end annotation
.end field

.field private final mNoisePhase:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFloatType;"
        }
    .end annotation
.end field

.field private final mPaint:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPaintType;"
        }
    .end annotation
.end field

.field private final mProgress:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFloatType;"
        }
    .end annotation
.end field

.field private final mShader:Landroid/graphics/drawable/RippleShader;

.field private mX:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFloatType;"
        }
    .end annotation
.end field

.field private mY:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFloatType;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILandroid/graphics/drawable/RippleShader;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFloatType;TFloatType;TFloatType;TFloatType;TPaintType;TFloatType;I",
            "Landroid/graphics/drawable/RippleShader;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mY:Ljava/lang/Object;

    iput-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mX:Ljava/lang/Object;

    iput-object p3, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mMaxRadius:Ljava/lang/Object;

    iput-object p4, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mNoisePhase:Ljava/lang/Object;

    iput-object p5, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mPaint:Ljava/lang/Object;

    iput-object p8, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mShader:Landroid/graphics/drawable/RippleShader;

    iput-object p6, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mProgress:Ljava/lang/Object;

    iput p7, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mColor:I

    return-void
.end method


# virtual methods
.method getColor()I
    .registers 2

    iget v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mColor:I

    return v0
.end method

.method getMaxRadius()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFloatType;"
        }
    .end annotation

    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mMaxRadius:Ljava/lang/Object;

    return-object v0
.end method

.method getNoisePhase()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFloatType;"
        }
    .end annotation

    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mNoisePhase:Ljava/lang/Object;

    return-object v0
.end method

.method getPaint()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPaintType;"
        }
    .end annotation

    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mPaint:Ljava/lang/Object;

    return-object v0
.end method

.method getProgress()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFloatType;"
        }
    .end annotation

    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mProgress:Ljava/lang/Object;

    return-object v0
.end method

.method getShader()Landroid/graphics/drawable/RippleShader;
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mShader:Landroid/graphics/drawable/RippleShader;

    return-object v0
.end method

.method getX()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFloatType;"
        }
    .end annotation

    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mX:Ljava/lang/Object;

    return-object v0
.end method

.method getY()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFloatType;"
        }
    .end annotation

    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mY:Ljava/lang/Object;

    return-object v0
.end method

.method setOrigin(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFloatType;TFloatType;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mX:Ljava/lang/Object;

    iput-object p2, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mY:Ljava/lang/Object;

    return-void
.end method

.method setRadius(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFloatType;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mMaxRadius:Ljava/lang/Object;

    return-void
.end method
