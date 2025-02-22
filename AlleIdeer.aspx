{
    "$schema": "https://developer.microsoft.com/json-schemas/sp/v2/tile-formatting.schema.json",
    "height": 390,
    "width": 254,
    "hideSelection": false,
    "fillHorizontally": true,
    "groupBy": "=[$Status0]",
    "formatter": {
      "elmType": "div",
      "attributes": {
        "class": "sp-card-container"
      },
      "children": [
        {
          "elmType": "div",
          "attributes": {
            "class": "sp-card-defaultClickButton"
          },
          "customRowAction": {
            "action": "defaultClick"
          }
        },
        {
          "elmType": "div",
          "attributes": {
            "class": "ms-bgColor-white sp-css-borderColor-neutralLight sp-card-borderHighlight sp-card-subContainer"
          },
          "children": [
            {
              "elmType": "div",
              "attributes": {
                "class": "sp-card-previewColumnContainer"
              },
              "children": [
                {
                  "elmType": "div",
                  "style": {
                    "display": "flex"
                  },
                  "children": [
                    {
                      "elmType": "p",
                      "attributes": {
                        "class": "sp-card-userEmptyText"
                      },
                      "txtContent": "=if(length([$Author]) == 0, '–', '')"
                    },
                    {
                      "forEach": "personIterator in [$Author]",
                      "elmType": "a",
                      "attributes": {
                        "class": "=if(loopIndex('personIterator') >= 5, 'sp-card-userContainer', 'sp-card-userContainer sp-card-keyboard-focusable')"
                      },
                      "style": {
                        "display": "=if(loopIndex('personIterator') >= 5, 'none', '')"
                      },
                      "defaultHoverField": "[$personIterator]",
                      "children": [
                        {
                          "elmType": "img",
                          "attributes": {
                            "src": "=getUserImage([$personIterator.email], 'S')",
                            "alt": "[$personIterator.title]",
                            "title": "[$personIterator.title]",
                            "class": "sp-card-userThumbnail"
                          },
                          "style": {
                            "display": "=if(length([$Author]) > 5 && loopIndex('personIterator') >= 4, 'none', '')"
                          }
                        },
                        {
                          "elmType": "div",
                          "attributes": {
                            "class": "ms-bgColor-neutralLight ms-fontColor-neutralSecondary sp-card-userOthers"
                          },
                          "style": {
                            "display": "=if(length([$Author]) > 5 && loopIndex('personIterator') == 4, '', 'none')"
                          },
                          "customCardProps": {
                            "formatter": {
                              "elmType": "div",
                              "attributes": {
                                "class": "sp-card-personCallout"
                              },
                              "children": [
                                {
                                  "forEach": "personIterator in [$Author]",
                                  "elmType": "div",
                                  "attributes": {
                                    "class": "sp-card-userContainer sp-card-userCustomCard"
                                  },
                                  "style": {
                                    "display": "=if(loopIndex('personIterator') < 4, 'none', '')"
                                  },
                                  "children": [
                                    {
                                      "elmType": "img",
                                      "defaultHoverField": "[$personIterator]",
                                      "attributes": {
                                        "src": "=getUserImage([$personIterator.email], 'S')",
                                        "title": "[$personIterator.title]",
                                        "class": "sp-card-userThumbnail"
                                      }
                                    }
                                  ]
                                }
                              ]
                            },
                            "openOnEvent": "hover"
                          },
                          "children": [
                            {
                              "elmType": "span",
                              "txtContent": "='+' + toString(length([$Author]) - (4))"
                            }
                          ]
                        }
                      ]
                    },
                    {
                      "elmType": "div",
                      "attributes": {
                        "class": "sp-card-userTitle sp-card-keyboard-focusable"
                      },
                      "style": {
                        "display": "=if(length([$Author]) == 1, '', 'none')"
                      },
                      "defaultHoverField": "[$personIterator]",
                      "txtContent": "[$Author.title]"
                    }
                  ]
                }
              ]
            },
            {
              "elmType": "div",
              "attributes": {
                "class": "sp-card-displayColumnContainer"
              },
              "children": [
                {
                  "elmType": "p",
                  "attributes": {
                    "title": "[$Title]",
                    "class": "ms-fontColor-neutralPrimary sp-card-content sp-card-highlightedContent",
                    "role": "heading",
                    "aria-level": "3"
                  },
                  "txtContent": "=if ([$Title] == '', '–', [$Title])"
                }
              ]
            },
            {
              "elmType": "div",
              "attributes": {
                "class": "sp-card-displayColumnContainer"
              },
              "children": [
                {
                  "elmType": "p",
                  "attributes": {
                    "title": "[$Beskrivelse]",
                    "class": "ms-fontColor-neutralPrimary sp-card-content sp-card-multiline"
                  },
                  "txtContent": "=if ([$Beskrivelse] == '', '–', [$Beskrivelse])",
                  "style": {
                    "-webkit-line-clamp": "2",
                    "height": "80px"
                  }
                }
              ]
            },
            {
              "elmType": "div",
              "attributes": {
                "class": "sp-card-displayColumnContainer"
              },
              "children": [
                {
                  "elmType": "div",
                  "attributes": {
                    "class": "sp-card-content sp-card-formatterRef"
                  },
                  "children": [
                    {
                      "columnFormatterReference": "[$Status0]"
                    }
                  ]
                }
              ]
            },
            {
              "elmType": "div",
              "attributes": {
                "class": "sp-card-displayColumnContainer"
              }
            },
            {
              "elmType": "div",
              "attributes": {
                "class": "sp-card-displayColumnContainer"
              },
              "children": [
                {
                  "elmType": "p",
                  "attributes": {
                    "class": "ms-fontColor-neutralSecondary sp-card-label"
                  },
                  "txtContent": "[!Fremdrift.DisplayName]"
                },
                {
                  "elmType": "div",
                  "style": {
                    "background-color": "#eee",
                    "border-radius": "5px",
                    "width": "100%",
                    "display": "table",
                    "position": "relative"
                  },
                  "children": [
                    {
                      "elmType": "div",
                      "style": {
                        "display": "table-cell",
                        "background-color": "=if([$Fremdrift]=='Ikke påbegynt','#D3D3D3',if([$Fremdrift]=='25%','#FFB266',if([$Fremdrift]=='50%','#FFFF66',if([$Fremdrift]=='75%','#B2FF66',if([$Fremdrift]=='Fullført','#66FF66','blue')))))",
                        "width": "=if([$Fremdrift]=='Ikke påbegynt','0%',if([$Fremdrift]=='25%','25%',if([$Fremdrift]=='50%','50%',if([$Fremdrift]=='75%','75%',if([$Fremdrift]=='Fullført','100%','0%')))))",
                        "height": "20px",
                        "border-radius": "100px",
                        "vertical-align": "middle",
                        "text-align": "left",
                        "border-color": "black"
                      }
                    },
                    {
                      "elmType": "div",
                      "style": {
                        "position": "absolute",
                        "top": "5px",
                        "left": "=if([$Fremdrift]=='Ikke påbegynt','0%',if([$Fremdrift]=='25%','25%',if([$Fremdrift]=='50%','50%',if([$Fremdrift]=='75%','75%',if([$Fremdrift]=='Fullført','100%','0%')))))",
                        "background-color": "black",
                        "border-radius": "50%",
                        "height": "10px",
                        "width": "10px",
                        "cursor": "pointer"
                      }
                    }
                  ]
                },
                {
                  "elmType": "div",
                  "style": {
                    "cursor": "pointer",
                    "margin-top": "10px"
                  },
                  "children": [
                    {
                      "elmType": "span",
                      "style": {
                        "font-weight": "600",
                        "color": "black"
                      },
                      "txtContent": "=if([$Fremdrift]=='Ikke påbegynt','0%',if([$Fremdrift]=='25%','25%',if([$Fremdrift]=='50%','50%',if([$Fremdrift]=='75%','75%',if([$Fremdrift]=='Fullført','Fullført','0%')))))"
                    }
                  ]
                }
              ]
            },
            {
              "elmType": "div",
              "attributes": {
                "class": "sp-card-previewColumnContainer"
              },
              "children": [
                {
                  "elmType": "div",
                  "style": {
                    "display": "flex"
                  },
                  "children": [
                    {
                      "elmType": "p",
                      "attributes": {
                        "class": "sp-card-userEmptyText"
                      },
                      "txtContent": "=if(length([$Oppf_x00f8_lgingsansvarlig]) == 0, '–', '')"
                    },
                    {
                      "forEach": "personIterator in [$Oppf_x00f8_lgingsansvarlig]",
                      "elmType": "a",
                      "attributes": {
                        "class": "=if(loopIndex('personIterator') >= 5, 'sp-card-userContainer', 'sp-card-userContainer sp-card-keyboard-focusable')"
                      },
                      "style": {
                        "display": "=if(loopIndex('personIterator') >= 5, 'none', '')"
                      },
                      "defaultHoverField": "[$personIterator]",
                      "children": [
                        {
                          "elmType": "img",
                          "attributes": {
                            "src": "=getUserImage([$personIterator.email], 'S')",
                            "title": "[$personIterator.title]",
                            "class": "sp-card-userThumbnail"
                          },
                          "style": {
                            "display": "=if(length([$Oppf_x00f8_lgingsansvarlig]) > 5 && loopIndex('personIterator') >= 4, 'none', '')"
                          }
                        },
                        {
                          "elmType": "div",
                          "attributes": {
                            "class": "ms-bgColor-neutralLight ms-fontColor-neutralSecondary sp-card-userOthers"
                          },
                          "style": {
                            "display": "=if(length([$Oppf_x00f8_lgingsansvarlig]) > 5 && loopIndex('personIterator') == 4, '', 'none')"
                          },
                          "customCardProps": {
                            "formatter": {
                              "elmType": "div",
                              "attributes": {
                                "class": "sp-card-personCallout"
                              },
                              "children": [
                                {
                                  "forEach": "personIterator in [$Oppf_x00f8_lgingsansvarlig]",
                                  "elmType": "div",
                                  "attributes": {
                                    "class": "sp-card-userContainer sp-card-userCustomCard"
                                  },
                                  "style": {
                                    "display": "=if(loopIndex('personIterator') < 4, 'none', '')"
                                  },
                                  "children": [
                                    {
                                      "elmType": "img",
                                      "defaultHoverField": "[$personIterator]",
                                      "attributes": {
                                        "src": "=getUserImage([$personIterator.email], 'S')",
                                        "title": "[$personIterator.title]",
                                        "class": "sp-card-userThumbnail"
                                      }
                                    }
                                  ]
                                }
                              ]
                            },
                            "openOnEvent": "hover"
                          },
                          "children": [
                            {
                              "elmType": "span",
                              "txtContent": "='+' + toString(length([$Oppf_x00f8_lgingsansvarlig]) - (4))"
                            }
                          ]
                        }
                      ]
                    },
                    {
                      "elmType": "div",
                      "attributes": {
                        "class": "sp-card-userTitle sp-card-keyboard-focusable"
                      },
                      "style": {
                        "display": "=if(length([$Oppf_x00f8_lgingsansvarlig]) == 1, '', 'none')"
                      },
                      "defaultHoverField": "[$personIterator]",
                      "txtContent": "[$Oppf_x00f8_lgingsansvarlig.title]"
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    }
  }