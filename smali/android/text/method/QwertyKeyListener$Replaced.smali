# classes3.dex

.class Landroid/text/method/QwertyKeyListener$Replaced;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/NoCopySpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/QwertyKeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Replaced"
.end annotation


# instance fields
.field private mText:[C


# direct methods
.method static bridge synthetic -$$Nest$fgetmText(Landroid/text/method/QwertyKeyListener$Replaced;)[C
    .registers 1

    iget-object p0, p0, Landroid/text/method/QwertyKeyListener$Replaced;->mText:[C

    return-object p0
.end method

.method public constructor <init>([C)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/method/QwertyKeyListener$Replaced;->mText:[C

    return-void
.end method
