# classes2.dex

.class public final Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;
.super Landroid/view/textclassifier/TextClassifierEvent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/textclassifier/TextClassifierEvent$Builder<",
        "Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;-><init>(IILandroid/view/textclassifier/TextClassifierEvent$Builder-IA;)V

    return-void
.end method


# virtual methods
.method public build()Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;
    .registers 3

    new-instance v0, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;-><init>(Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent-IA;)V

    return-object v0
.end method

.method bridge synthetic self()Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .registers 2

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method self()Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;
    .registers 1

    return-object p0
.end method
