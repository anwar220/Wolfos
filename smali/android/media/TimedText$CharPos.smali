# classes2.dex

.class public final Landroid/media/TimedText$CharPos;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CharPos"
.end annotation


# instance fields
.field public final endChar:I

.field public final startChar:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/TimedText$CharPos;->startChar:I

    iput p2, p0, Landroid/media/TimedText$CharPos;->endChar:I

    return-void
.end method
