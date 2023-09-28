# classes2.dex

.class Landroid/media/Tokenizer$DataTokenizer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/Tokenizer$TokenizerPhase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Tokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataTokenizer"
.end annotation


# instance fields
.field private mData:Ljava/lang/StringBuilder;

.field final synthetic this$0:Landroid/media/Tokenizer;


# direct methods
.method constructor <init>(Landroid/media/Tokenizer;)V
    .registers 2

    iput-object p1, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private replaceEscape(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7

    iget-object v0, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v0}, Landroid/media/Tokenizer;->-$$Nest$fgetmLine(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Landroid/media/Tokenizer$DataTokenizer;->mData:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v1}, Landroid/media/Tokenizer;->-$$Nest$fgetmLine(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-$$Nest$fgetmHandledLen(Landroid/media/Tokenizer;)I

    move-result v2

    invoke-virtual {v1, v2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/media/Tokenizer$DataTokenizer;->mData:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Landroid/media/Tokenizer;->-$$Nest$fputmHandledLen(Landroid/media/Tokenizer;I)V

    iget-object v0, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v0}, Landroid/media/Tokenizer;->-$$Nest$fgetmHandledLen(Landroid/media/Tokenizer;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v1

    :cond_39
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public start()Landroid/media/Tokenizer$TokenizerPhase;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/media/Tokenizer$DataTokenizer;->mData:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public tokenize()V
    .registers 5

    iget-object v0, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v0}, Landroid/media/Tokenizer;->-$$Nest$fgetmLine(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v1}, Landroid/media/Tokenizer;->-$$Nest$fgetmHandledLen(Landroid/media/Tokenizer;)I

    move-result v1

    :goto_10
    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-$$Nest$fgetmLine(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_84

    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-$$Nest$fgetmLine(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x26

    if-ne v2, v3, :cond_64

    const-string v2, "&amp;"

    const-string v3, "&"

    invoke-direct {p0, v2, v3, v1}, Landroid/media/Tokenizer$DataTokenizer;->replaceEscape(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_81

    const-string v2, "&lt;"

    const-string v3, "<"

    invoke-direct {p0, v2, v3, v1}, Landroid/media/Tokenizer$DataTokenizer;->replaceEscape(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_81

    const-string v2, "&gt;"

    const-string v3, ">"

    invoke-direct {p0, v2, v3, v1}, Landroid/media/Tokenizer$DataTokenizer;->replaceEscape(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_81

    const-string v2, "&lrm;"

    const-string v3, "\u200e"

    invoke-direct {p0, v2, v3, v1}, Landroid/media/Tokenizer$DataTokenizer;->replaceEscape(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_81

    const-string v2, "&rlm;"

    const-string v3, "\u200f"

    invoke-direct {p0, v2, v3, v1}, Landroid/media/Tokenizer$DataTokenizer;->replaceEscape(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_81

    const-string v2, "&nbsp;"

    const-string v3, "\u00a0"

    invoke-direct {p0, v2, v3, v1}, Landroid/media/Tokenizer$DataTokenizer;->replaceEscape(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_81

    :cond_64
    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-$$Nest$fgetmLine(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_81

    move v0, v1

    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-$$Nest$fgetmTagTokenizer(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$TokenizerPhase;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/Tokenizer$TokenizerPhase;->start()Landroid/media/Tokenizer$TokenizerPhase;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/Tokenizer;->-$$Nest$fputmPhase(Landroid/media/Tokenizer;Landroid/media/Tokenizer$TokenizerPhase;)V

    goto :goto_84

    :cond_81
    :goto_81
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_84
    :goto_84
    iget-object v1, p0, Landroid/media/Tokenizer$DataTokenizer;->mData:Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-$$Nest$fgetmLine(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v3}, Landroid/media/Tokenizer;->-$$Nest$fgetmHandledLen(Landroid/media/Tokenizer;)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v1}, Landroid/media/Tokenizer;->-$$Nest$fgetmListener(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$OnTokenListener;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->mData:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/Tokenizer$OnTokenListener;->onData(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/Tokenizer$DataTokenizer;->mData:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v1, v0}, Landroid/media/Tokenizer;->-$$Nest$fputmHandledLen(Landroid/media/Tokenizer;I)V

    return-void
.end method
