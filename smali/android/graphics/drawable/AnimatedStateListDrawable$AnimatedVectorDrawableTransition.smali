# classes.dex

.class Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;
.super Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatedVectorDrawableTransition"
.end annotation


# instance fields
.field private final mAvd:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final mHasReversibleFlag:Z

.field private final mReversed:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimatedVectorDrawable;ZZ)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$Transition-IA;)V

    iput-object p1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mAvd:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-boolean p2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mReversed:Z

    iput-boolean p3, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mHasReversibleFlag:Z

    return-void
.end method


# virtual methods
.method public canReverse()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mAvd:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->canReverse()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mHasReversibleFlag:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public reverse()V
    .registers 3

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->canReverse()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mAvd:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reverse()V

    goto :goto_15

    :cond_c
    invoke-static {}, Landroid/graphics/drawable/AnimatedStateListDrawable;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Can\'t reverse, either the reversible is set to false, or the AnimatedVectorDrawable can\'t reverse"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    return-void
.end method

.method public start()V
    .registers 2

    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mReversed:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->reverse()V

    goto :goto_d

    :cond_8
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mAvd:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :goto_d
    return-void
.end method

.method public stop()V
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mAvd:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    return-void
.end method