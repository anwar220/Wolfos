# classes3.dex

.class public Landroid/util/LogPrinter;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/util/Printer;


# instance fields
.field private final mBuffer:I

.field private final mPriority:I

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/util/LogPrinter;->mPriority:I

    iput-object p2, p0, Landroid/util/LogPrinter;->mTag:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/util/LogPrinter;->mBuffer:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/util/LogPrinter;->mPriority:I

    iput-object p2, p0, Landroid/util/LogPrinter;->mTag:Ljava/lang/String;

    iput p3, p0, Landroid/util/LogPrinter;->mBuffer:I

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .registers 5

    iget v0, p0, Landroid/util/LogPrinter;->mBuffer:I

    iget v1, p0, Landroid/util/LogPrinter;->mPriority:I

    iget-object v2, p0, Landroid/util/LogPrinter;->mTag:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
