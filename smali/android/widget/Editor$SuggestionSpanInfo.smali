# classes4.dex

.class final Landroid/widget/Editor$SuggestionSpanInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SuggestionSpanInfo"
.end annotation


# instance fields
.field mSpanEnd:I

.field mSpanStart:I

.field mSuggestionSpan:Landroid/text/style/SuggestionSpan;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor$SuggestionSpanInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/Editor$SuggestionSpanInfo;-><init>()V

    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    return-void
.end method
