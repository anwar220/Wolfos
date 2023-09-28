# classes2.dex

.class public Landroid/view/textclassifier/TextLinks$TextLinkSpan;
.super Landroid/text/style/ClickableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextLinks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextLinkSpan"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextLinks$TextLinkSpan$InvocationMethod;
    }
.end annotation


# static fields
.field public static final INVOCATION_METHOD_KEYBOARD:I = 0x1

.field public static final INVOCATION_METHOD_TOUCH:I = 0x0

.field public static final INVOCATION_METHOD_UNSPECIFIED:I = -0x1


# instance fields
.field private final mTextLink:Landroid/view/textclassifier/TextLinks$TextLink;


# direct methods
.method public constructor <init>(Landroid/view/textclassifier/TextLinks$TextLink;)V
    .registers 2

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->mTextLink:Landroid/view/textclassifier/TextLinks$TextLink;

    return-void
.end method


# virtual methods
.method public final getTextLink()Landroid/view/textclassifier/TextLinks$TextLink;
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->mTextLink:Landroid/view/textclassifier/TextLinks$TextLink;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->mTextLink:Landroid/view/textclassifier/TextLinks$TextLink;

    invoke-static {v0}, Landroid/view/textclassifier/TextLinks$TextLink;->-$$Nest$fgetmUrlSpan(Landroid/view/textclassifier/TextLinks$TextLink;)Landroid/text/style/URLSpan;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->mTextLink:Landroid/view/textclassifier/TextLinks$TextLink;

    invoke-static {v0}, Landroid/view/textclassifier/TextLinks$TextLink;->-$$Nest$fgetmUrlSpan(Landroid/view/textclassifier/TextLinks$TextLink;)Landroid/text/style/URLSpan;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->onClick(Landroid/view/View;I)V

    return-void
.end method

.method public final onClick(Landroid/view/View;I)V
    .registers 6

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_35

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/textclassifier/TextClassificationManager;->getSettings(Landroid/content/Context;)Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartLinkifyEnabled()Z

    move-result v2

    if-eqz v2, :cond_20

    packed-switch p2, :pswitch_data_36

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->handleClick(Landroid/view/textclassifier/TextLinks$TextLinkSpan;)Z

    goto :goto_35

    :pswitch_1c  #0x0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->requestActionMode(Landroid/view/textclassifier/TextLinks$TextLinkSpan;)Z

    goto :goto_35

    :cond_20
    iget-object v2, p0, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->mTextLink:Landroid/view/textclassifier/TextLinks$TextLink;

    invoke-static {v2}, Landroid/view/textclassifier/TextLinks$TextLink;->-$$Nest$fgetmUrlSpan(Landroid/view/textclassifier/TextLinks$TextLink;)Landroid/text/style/URLSpan;

    move-result-object v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->mTextLink:Landroid/view/textclassifier/TextLinks$TextLink;

    invoke-static {v2}, Landroid/view/textclassifier/TextLinks$TextLink;->-$$Nest$fgetmUrlSpan(Landroid/view/textclassifier/TextLinks$TextLink;)Landroid/text/style/URLSpan;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/style/URLSpan;->onClick(Landroid/view/View;)V

    goto :goto_35

    :cond_32
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->handleClick(Landroid/view/textclassifier/TextLinks$TextLinkSpan;)Z

    :cond_35
    :goto_35
    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1c  #00000000
    .end packed-switch
.end method
