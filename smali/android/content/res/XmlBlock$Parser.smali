# classes.dex

.class public final Landroid/content/res/XmlBlock$Parser;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/res/XmlResourceParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/XmlBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Parser"
.end annotation


# instance fields
.field private final mBlock:Landroid/content/res/XmlBlock;

.field private mDecNextDepth:Z

.field private mDepth:I

.field private mEventType:I

.field mParseState:J

.field private mStarted:Z

.field final synthetic this$0:Landroid/content/res/XmlBlock;


# direct methods
.method constructor <init>(Landroid/content/res/XmlBlock;JLandroid/content/res/XmlBlock;)V
    .registers 6

    iput-object p1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    iput-boolean v0, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    iput-wide p2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    iput-object p4, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    invoke-static {p4}, Landroid/content/res/XmlBlock;->-$$Nest$fgetmOpenCount(Landroid/content/res/XmlBlock;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p4, v0}, Landroid/content/res/XmlBlock;->-$$Nest$fputmOpenCount(Landroid/content/res/XmlBlock;I)V

    return-void
.end method

.method private getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Retrieving a string from the StringPool of an XmlBlock should never fail"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 7

    iget-object v0, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_15

    invoke-static {v1, v2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeDestroyParseState(J)V

    iput-wide v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    invoke-static {v1}, Landroid/content/res/XmlBlock;->-$$Nest$mdecOpenCountLocked(Landroid/content/res/XmlBlock;)V

    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "defineEntityReplacementText() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->close()V

    return-void
.end method

.method public getAttributeBooleanValue(IZ)Z
    .registers 6

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeDataType(JI)I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1a

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_1a

    iget-wide v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v1, v2, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeData(JI)I

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1

    :cond_1a
    return p2
.end method

.method public getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_d

    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeBooleanValue(IZ)Z

    move-result v1

    return v1

    :cond_d
    return p3
.end method

.method public getAttributeCount()I
    .registers 3

    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeCount(J)I

    move-result v0

    goto :goto_d

    :cond_c
    const/4 v0, -0x1

    :goto_d
    return v0
.end method

.method public getAttributeFloatValue(IF)F
    .registers 6

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeDataType(JI)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_14

    iget-wide v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v1, v2, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeData(JI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1

    :cond_14
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "not a float!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F
    .registers 6

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_d

    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeFloatValue(IF)F

    move-result v1

    return v1

    :cond_d
    return p3
.end method

.method public getAttributeIntValue(II)I
    .registers 6

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeDataType(JI)I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_15

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_15

    iget-wide v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v1, v2, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeData(JI)I

    move-result v1

    return v1

    :cond_15
    return p2
.end method

.method public getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_d

    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeIntValue(II)I

    move-result v1

    return v1

    :cond_d
    return p3
.end method

.method public getAttributeListValue(I[Ljava/lang/String;I)I
    .registers 7

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeDataType(JI)I

    move-result v0

    iget-wide v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v1, v2, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeData(JI)I

    move-result v1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1c

    iget-object v2, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v2, v2, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v2, v1}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lcom/android/internal/util/XmlUtils;->convertValueToList(Ljava/lang/CharSequence;[Ljava/lang/String;I)I

    move-result v2

    return v2

    :cond_1c
    return v1
.end method

.method public getAttributeListValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .registers 7

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_d

    invoke-virtual {p0, v0, p3, p4}, Landroid/content/res/XmlBlock$Parser;->getAttributeListValue(I[Ljava/lang/String;I)I

    move-result v1

    return v1

    :cond_d
    return p4
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .registers 5

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeName(JI)I

    move-result v0

    if-ltz v0, :cond_15

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_15
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributeNameResource(I)I
    .registers 4

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeResource(JI)I

    move-result v0

    return v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .registers 5

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeNamespace(JI)I

    move-result v0

    if-ltz v0, :cond_15

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_15
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    const-string v1, ""

    return-object v1

    :cond_1b
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getAttributePrefix not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeResourceValue(II)I
    .registers 6

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeDataType(JI)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    iget-wide v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v1, v2, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeData(JI)I

    move-result v1

    return v1

    :cond_10
    return p2
.end method

.method public getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_d

    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeResourceValue(II)I

    move-result v1

    return v1

    :cond_d
    return p3
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .registers 3

    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeUnsignedIntValue(II)I
    .registers 6

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeDataType(JI)I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_15

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_15

    iget-wide v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v1, v2, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeData(JI)I

    move-result v1

    return v1

    :cond_15
    return p2
.end method

.method public getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_d

    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeUnsignedIntValue(II)I

    move-result v1

    return v1

    :cond_d
    return p3
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .registers 6

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeStringValue(JI)I

    move-result v0

    if-ltz v0, :cond_15

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_15
    iget-wide v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v1, v2, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeDataType(JI)I

    move-result v1

    if-eqz v1, :cond_28

    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeData(JI)I

    move-result v2

    invoke-static {v1, v2}, Landroid/util/TypedValue;->coerceToString(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_28
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_d

    invoke-virtual {p0, v0}, Landroid/content/res/XmlBlock$Parser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method public getClassAttribute()Ljava/lang/String;
    .registers 3

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetClassAttribute(J)I

    move-result v0

    if-ltz v0, :cond_15

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return-object v1
.end method

.method public getColumnNumber()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getDepth()I
    .registers 2

    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    return v0
.end method

.method public getEventType()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const-string v0, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public getIdAttribute()Ljava/lang/String;
    .registers 3

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetIdAttribute(J)I

    move-result v0

    if-ltz v0, :cond_15

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return-object v1
.end method

.method public getIdAttributeResourceValue(I)I
    .registers 4

    const/4 v0, 0x0

    const-string v1, "id"

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/res/XmlBlock$Parser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLineNumber()I
    .registers 3

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetLineNumber(J)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->nativeGetName(J)I

    move-result v0

    if-ltz v0, :cond_15

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return-object v1
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 3

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetNamespace(J)I

    move-result v0

    if-ltz v0, :cond_15

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    :cond_15
    const-string v1, ""

    :goto_17
    return-object v1
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getNamespace() not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespaceCount(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "getNamespaceCount() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "getNamespacePrefix() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "getNamespaceUri() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final getPooledString(I)Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v0, v0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v0, p1}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binary XML file line #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getPrefix not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSourceResId()I
    .registers 3

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetSourceResId(J)I

    move-result v0

    return v0
.end method

.method public getStyleAttribute()I
    .registers 3

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetStyleAttribute(J)I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetText(J)I

    move-result v0

    if-ltz v0, :cond_15

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return-object v1
.end method

.method public getTextCharacters([I)[C
    .registers 7

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    const/4 v2, 0x0

    aput v2, p1, v2

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    aput v4, p1, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    new-array v1, v3, [C

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    :cond_1e
    return-object v1
.end method

.method public isAttributeDefault(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isEmptyElementTag()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isWhitespace()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public next()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_9

    iput-boolean v2, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    return v1

    :cond_9
    iget-wide v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_12

    return v2

    :cond_12
    invoke-static {v3, v4}, Landroid/content/res/XmlBlock;->nativeNext(J)I

    move-result v0

    iget-boolean v3, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    if-eqz v3, :cond_21

    iget v3, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    sub-int/2addr v3, v2

    iput v3, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    iput-boolean v1, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    :cond_21
    packed-switch v0, :pswitch_data_36

    goto :goto_2e

    :pswitch_25  #0x3
    iput-boolean v2, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    goto :goto_2e

    :pswitch_28  #0x2
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    nop

    :goto_2e
    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    if-ne v0, v2, :cond_35

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->close()V

    :cond_35
    return v0

    :pswitch_data_36
    .packed-switch 0x2
        :pswitch_28  #00000002
        :pswitch_25  #00000003
    .end packed-switch
.end method

.method public nextTag()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->isWhitespace()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    :cond_11
    const/4 v1, 0x2

    if-eq v0, v1, :cond_36

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    goto :goto_36

    :cond_18
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": expected start or end tag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_36
    :goto_36
    return v0
.end method

.method public nextText()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5a

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-ne v0, v2, :cond_38

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    if-ne v0, v3, :cond_1b

    return-object v2

    :cond_1b
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": event TEXT it must be immediately followed by END_TAG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    :cond_38
    if-ne v0, v3, :cond_3d

    const-string v1, ""

    return-object v1

    :cond_3d
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": parser must be on START_TAG or TEXT to read text"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    :cond_5a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": parser must be on START_TAG to read next text"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public nextToken()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    return v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getEventType()I

    move-result v0

    if-ne p1, v0, :cond_1f

    if-eqz p2, :cond_12

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_12
    if-eqz p3, :cond_1e

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1e
    return-void

    :cond_1f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/content/res/XmlBlock$Parser;->TYPES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p2, :cond_b

    return-void

    :cond_b
    const-string v0, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz p2, :cond_16

    return-void

    :cond_16
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "setInput() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInput(Ljava/io/Reader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "setInput() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "setProperty() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method